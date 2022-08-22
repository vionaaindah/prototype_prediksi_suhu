from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render, redirect
from .models import DroughtFactor, DroughtIndex


from fcm_django.models import FCMDevice
from firebase_admin.messaging import Message, Notification

from peatlandcovers.models import PeatlandCover
from peatlandfields.models import PeatlandField

from .serializers import DroughtIndexSerializer
from django.views.decorators.csrf import csrf_exempt
import math 

@csrf_exempt
def drough_factor_list(request):
    
    """
    List all code snippets, or create a new snippet.
    """
    if request.method == 'GET':
        drough_index = DroughtIndex.objects.select_related('peatland_cover').all()
        serializer = DroughtIndexSerializer(drough_index, many=True)
        return JsonResponse({'data': serializer.data, 'status': 'success', 'code': 200}, safe=False, json_dumps_params={'indent': 6})
        

# @login_required
def index(request):
 
    context = {
        'title': "Tingkat Faktor Kekeringan",
        'navbar': 'kbdis',
        'peatlands': PeatlandCover.objects.all()
    }

    return render(request, 'pages/kbdis/kbdis.html', context)

def store(request):
    try:
        del request.session['result']
        del request.session['peatland']
    except KeyError:
        pass

    if request.method == 'POST':
        peatland_cover = request.POST['vegetation']
        rainfall_today = int(request.POST['rainfall_today'])
        rainfall_yesterday = int(request.POST['rainfall_yesterday'])
        climate = int(request.POST['climate']) # ro
        # water_level = int(request.POST['water_level'])
        # max_temperature = int(request.POST['max_temperature']) 
        peatland = PeatlandCover.objects.get(id=peatland_cover)
        peatland_field = PeatlandField.objects.filter(peatland_cover=peatland_cover,water_level__isnull=False,).latest('created_at')
        water_level =peatland_field.water_level
        max_temperature =peatland_field.max_air_temperature

        try:
            drought_index_yesterday = DroughtIndex.objects.latest('created_at')
            drought_index_yesterday = drought_index_yesterday.kbdi
        except:
            drought_index_yesterday = None

        # drought_index_yesterday = DroughtIndex.objects.filter(name='created_at').last()


        if drought_index_yesterday is None:
            drought_index_yesterday = 0
            
        rf = rain_factor(rainfall_today, rainfall_yesterday)
        df = drought_factor(water_level, max_temperature, drought_index_yesterday, climate, peatland.result_type, rf)
        kbdi = drought_index(drought_index_yesterday, df)

        alarm = alarm_status(kbdi)
        
        DroughtFactor.objects.create(
            drought_factor = df,
            peatland_cover = peatland
        )
        
        drought_index_save = DroughtIndex.objects.create(
            kbdi = kbdi,
            status = alarm,
            peatland_cover = peatland,
          
        )
        
        # drought_indexs = DroughtIndex.objects.select_related('peatland_cover').get(id=drought_index_save.id)
        # serializer = DroughtIndexSerializer(drought_indexs, many=False)
        # drought_factor_list = JsonResponse({'data': serializer.data, 'status': 'success', 'code': 200}, safe=False, json_dumps_params={'indent': 6})

        # send_alarm(drought_factor_list)
        
        request.session['peatland'] = alarm
        request.session['result'] = True

    return redirect('kbdis.index')


def rain_factor(rainfall_today, rainfall_yesterday):
    if rainfall_today >= 5.1:
        rf = rainfall_today - 5.1
    elif rainfall_today + rainfall_yesterday >= 5.1:
        rf = rainfall_today + rainfall_yesterday - 5.1
    elif rainfall_today + rainfall_yesterday < 5.1:
        rf = 0

    return rf


def drought_factor(water_level, max_temperature, drought_index_yesterday, climate, vegetation, rf):

    b = 0.0905

    if drought_index_yesterday - rf > 0:
        drought_index_yesterday = drought_index_yesterday - rf
    else:
        drought_index_yesterday = 0
    
    if climate == 2500:
        if vegetation == "Tinggi":
            a = 0.4386
            c = 3.77

        if vegetation == "Sedang":
            a = 0.5848
            c = 5.02

        if vegetation == "Bare":
            a = 0.8775
            c = 7.53

    if climate == 1650:
        if vegetation == "Tinggi":
            a = 0.6225
            c = 5.34

        if vegetation == "Sedang":
            a = 0.8300
            c = 7.13

        if vegetation == "Bare":
            a = 1.2450
            c = 10.69

    drought_factor = ((water_level - drought_index_yesterday) * ((a * math.pow(math.e, b*max_temperature*1.552)) - c) * math.pow(10, -3)) / 1 + (10.88 * math.pow(math.e, -0.001736 * climate))

    return drought_factor
            

def drought_index(drought_index_yesterday, drought_factor):

    kbdi = drought_factor + drought_index_yesterday

    return kbdi 

def alarm_status(kbdi):
    
    if kbdi >= 350:
        current_stage = "Extreme"
    elif kbdi >= 301 and kbdi < 350:
        current_stage = "High"
    elif kbdi >= 201 and kbdi <= 300:
        current_stage = "Moderate"
    elif kbdi >=0 and kbdi < 200:
        current_stage = "Low"

    return current_stage


def send_alarm(data):
    device = FCMDevice.objects.first()
    device.send_message(Message(data=data))


    
