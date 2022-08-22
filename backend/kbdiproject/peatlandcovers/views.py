from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.core.files.storage import FileSystemStorage
from django.views.decorators.csrf import csrf_exempt

from rest_framework.parsers import JSONParser
from .models import PeatlandCover
from .serializers import PeatlandCoverSerializer
import os
import mimetypes
import torch
from torchvision import transforms
from PIL import Image
import cv2
import numpy as np

from neuralnetworks.MobileNet2 import MobileNet2

# Create your views here.
# @login_required
def index(request):
    context = {
        'title': "EWS Kebakaran Lahan Gambut",
        'navbar': 'peatlands'
    }

    return render(request, 'pages/peatlandcovers/peatlandcovers.html', context)


def peatland_cover_list(request):
    """
    List all peatland covers.
    """
    if request.method == 'GET':
        peatland_covers = PeatlandCover.objects.all()
        serializer = PeatlandCoverSerializer(peatland_covers, many=True)
        return JsonResponse({'data': serializer.data, 'status': 'success', 'code': 200}, safe=False, json_dumps_params={'indent': 6})

def store(request):

    if request.method == 'POST':
        num_classes = 3
        input_size = 224
        net_type = 1
        model_path = os.path.join(os.path.dirname(os.path.dirname(__file__)), 'static/save/MobileNet2-1652807849-epoch100.pkl')
        
        name = request.POST['name']
        # cover = request.FILES['cover']
        file = request.FILES['file']
        # alarm = request.FILES['alarm']

        file_process = []
        file_results = []

        fs = FileSystemStorage()
        # filename = fs.save('images/' + cover.name, cover)
        # audio_name = fs.save('audios/' + alarm.name, alarm)

        mimetypes.init()
        mimestart = mimetypes.guess_type(file.name)[0]

        if mimestart != None:
            mimestart = mimestart.split('/')[0]

        if mimestart == "image":
            file_process.append(file)

        elif mimestart == "video":
            video = fs.save('videos/' + file.name, file)

            # Opens the Video file
            cap= cv2.VideoCapture(os.path.join(os.path.dirname(os.path.dirname(__file__)), 'static/images/' + video))
            
            i=0
            while(cap.isOpened()):
                ret, frame = cap.read()
                if ret == False:
                    break
                
                file_process.append(frame)
                i+=1

        model = MobileNet2(num_classes, input_size, net_type)
        model.load_state_dict(torch.load(model_path))
        
        device = torch.device("cpu")
        model.to(device)
        
        model.eval()

        preprocess = transforms.Compose([
			transforms.Resize(256),
			transforms.CenterCrop(224),
			transforms.RandomHorizontalFlip(),
			transforms.ToTensor(),
            transforms.Normalize(mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225])
		])

        print(file_process)
        for file in file_process:
            
            if mimestart == "image":
                input_image = Image.open(file)

            elif mimestart == "video":
                input_image = Image.fromarray(file)

            input_tensor = preprocess(input_image)
            input_batch = input_tensor.unsqueeze(0)
            
            with torch.no_grad():
                output = model(input_batch)
            
            probabilities = torch.nn.functional.softmax(output[0], dim=0)
            
            top_prob, top_cover = torch.topk(probabilities, 3)

            categories = ["tinggi", "bare", "sedang"]

            file_results.append(str(categories[top_cover[0]]).capitalize())
        
        result_type =  max(set(file_results), key = file_results.count)
        PeatlandCover.objects.create(
            name = name,
            # image = filename,
            result_type = result_type,
            # alarm = audio_name
        )
            
        field =fs.save('images/'+ str(name)+'-'+str(result_type),file)
        
        request.session['result'] = True
        request.session['name'] = name
        request.session['image'] = field
        request.session['result_type'] = result_type
    
    return redirect('cover.index')