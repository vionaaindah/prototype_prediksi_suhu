from django.http import HttpResponse, JsonResponse
from django.views.decorators.csrf import csrf_exempt
from rest_framework.parsers import JSONParser
from .models import PeatlandField
from .serializers import PeatlandFieldSerializer

@csrf_exempt
def peatland_field_list(request):
    """
    List all peatlands.
    """
    if request.method == 'GET':
        peatlands = PeatlandField.objects.all()
        serializer = PeatlandFieldSerializer(peatlands, many=True)
        return JsonResponse(serializer.data, safe=False)