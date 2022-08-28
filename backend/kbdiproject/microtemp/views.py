from re import I
from django.shortcuts import render, redirect
import numpy as np
import pandas as pd
import kbdiproject.settings as sett
# Create your views here.
import requests


def index(request):
    context = {
        'title': "Prediksi Suhu Udara Mikro",
        'navbar': 'microtemp'
    }

    Temp_FieldA = requests.get(
        "https://api.thingspeak.com/channels/1522263/fields/4.json?api_key=XUFKUIBLFK2IZMT2&results=12")
    suhu_mikro = []

    for i in range(12):
        a = float(Temp_FieldA.json()['feeds'][i-12]['field4'])
        suhu_mikro.append(a)

    suhu_mikro = [suhu_mikro]
    test_X = np.fft.fft(suhu_mikro)
    test_X = test_X.reshape((test_X.shape[0], 1, test_X.shape[1]))
    model = sett.model_mikro

    # membuat prediksi
    predict = model.predict(test_X)
    test_X = test_X.reshape((test_X.shape[0], 12))

    # invert scaling untuk prediksi
    prediksi = np.concatenate((test_X, predict), axis=1)
    prediksi = np.fft.ifft(prediksi)
    prediksi = np.abs(prediksi)
    prediksi = prediksi[:, -1]

    hasil_prediksi = '%.2f °C' % prediksi[-1]

    request.session['result'] = True
    request.session['hasil_prediksi'] = hasil_prediksi
    return render(request, 'pages/microtemp/microtemp.html', context)
