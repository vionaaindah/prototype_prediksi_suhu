from ast import If
import requests
from kbdis.models import DroughtIndex
from peatlandfields.models import PeatlandField
from peatlandcovers.models import PeatlandCover
from apscheduler.schedulers.background import BackgroundScheduler


def store():

    Temp_FieldA = requests.get("https://api.thingspeak.com/channels/1522263/fields/4.json?api_key=XUFKUIBLFK2IZMT2&results=2")
    Temp_FieldA = float(Temp_FieldA.json()['feeds'][-1]['field4'])
    Temp_FieldB = requests.get("https://api.thingspeak.com/channels/1685313/fields/4.json?api_key=YKY36BFEA12DFIWF&results=2")
    Temp_FieldB = float(Temp_FieldB.json()['feeds'][-1]['field4'])
    Temp_FieldC = requests.get("https://api.thingspeak.com/channels/1685140/fields/4.json?api_key=8VY9T0QZUCT7ALBW&results=2")
    Temp_FieldC = float(Temp_FieldC.json()['feeds'][-1]['field4'])

    TMAField2DenseA=requests.get("https://api.thingspeak.com/channels/1522263/fields/2.json?api_key=XUFKUIBLFK2IZMT2&results=2")
    TMAField2DenseA=float(TMAField2DenseA.json()['feeds'][-1]['field2'])
    TMAField2MediumA = requests.get("https://api.thingspeak.com/channels/1521968/fields/2.json?api_key=ZVV8RTK4EHO1WHDR&results=2")
    TMAField2MediumA = float(TMAField2MediumA.json()['feeds'][-1]['field2'])
    TMAField2BareA = requests.get("https://api.thingspeak.com/channels/1500003/fields/1.json?api_key=FBQBOIRBTMKPN07S&results=2")
    TMAField2BareA = float(TMAField2BareA.json()['feeds'][-1]['field1'])

    TMAField2DenseB =  requests.get("https://api.thingspeak.com/channels/1685313/fields/2.json?api_key=YKY36BFEA12DFIWF&results=2")
    TMAField2DenseB = float(TMAField2DenseB.json()['feeds'][-1]['field2'])
    TMAField2MediumB = requests.get("https://api.thingspeak.com/channels/1689674/fields/2.json?api_key=WWJAZ1AKKJM280BV&results=2")
    TMAField2MediumB = float(TMAField2MediumB.json()['feeds'][-1]['field2'])
    TMAField2BareB = requests.get("https://api.thingspeak.com/channels/1689679/fields/2.json?api_key=0SI893F7PE8TT49Q&results=2")
    TMAField2BareB = float(TMAField2BareB.json()['feeds'][-1]['field2'])

    TMAField2DenseC = requests.get("https://api.thingspeak.com/channels/1685140/fields/2.json?api_key=8VY9T0QZUCT7ALBW&results=2")
    TMAField2DenseC = float(TMAField2DenseC.json()['feeds'][-1]['field2'])
    TMAField2MediumC = requests.get("https://api.thingspeak.com/channels/1689684/fields/2.json?api_key=MVUUD4O12D0MHRL8&results=2")
    TMAField2MediumC = float(TMAField2MediumC.json()['feeds'][-1]['field2'])
    TMAField2BareC = requests.get("https://api.thingspeak.com/channels/1689685/fields/2.json?api_key=LSTRTHVBGC4SQREL&results=2")
    TMAField2BareC = float(TMAField2BareC.json()['feeds'][-1]['field2'])

    if TMAField2BareA == None or TMAField2BareB == None or TMAField2BareC == None or TMAField2DenseA== None or TMAField2DenseB == None or TMAField2DenseC == None or TMAField2MediumA== None or TMAField2MediumB== None or TMAField2MediumC == None or TMAField2BareA <0 or TMAField2BareB <0 or TMAField2BareC < 0 or TMAField2DenseA < 0 or TMAField2DenseB < 0 or TMAField2DenseC < 0 or TMAField2MediumA < 0 or TMAField2MediumB < 0 or TMAField2MediumC < 0:        
        TMAField2BareA = 0
        TMAField2BareB = 0
        TMAField2BareC = 0
        TMAField2DenseA = 0
        TMAField2DenseB = 0
        TMAField2DenseC = 0
        TMAField2MediumA = 0
        TMAField2MediumB = 0
        TMAField2MediumC = 0

    if Temp_FieldA == None or Temp_FieldB == None or Temp_FieldC == None:
        Temp_FieldA = 33
        Temp_FieldB = 33
        Temp_FieldC = 33

    TempMaks=max(Temp_FieldA,Temp_FieldB,Temp_FieldC)
    waterlevelDense=TMAField2DenseA+TMAField2DenseB+TMAField2DenseC/3
    WaterlevelMedium=TMAField2MediumA+TMAField2MediumB+TMAField2MediumC/3
    waterlevelBare=TMAField2BareA+TMAField2BareB+TMAField2BareC/3
    
    Peatland=PeatlandCover.objects.all()
    print("ini jalan")
    for item in Peatland:
        peatland_cover_id = item.id
        result_type =item.result_type

    for item in Peatland:
        if(item.result_type=='Tinggi'):
            PeatlandField.objects.create(
                water_level= waterlevelDense,
                max_air_temperature=TempMaks,
                peatland_cover_id=item.id,

            )
        elif(item.result_type=='Sedang'):
            PeatlandField.objects.create(
                water_level= WaterlevelMedium,
                max_air_temperature=TempMaks,
                peatland_cover_id=item.id,
            )
        elif(item.result_type=='Bare'):
            PeatlandField.objects.create(
                water_level= waterlevelBare,
                max_air_temperature=TempMaks,
                peatland_cover_id=item.id,
            )
    
                
    
def start():
    scheduler = BackgroundScheduler()
    scheduler.add_job(store,'cron', day_of_week='mon-sun',hour=23,minute=40)
    scheduler.start()