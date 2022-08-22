from django.shortcuts import render, redirect
import numpy as np
import kbdiproject.settings as sett
# Create your views here.


def index(request):
    context = {
        'title': "Prediksi Suhu Udara Dengan Masukkan Angka",
        'navbar': 'temperature'
    }
    return render(request, 'pages/temperature/temperature.html', context)


def store(request):
    if request.method == 'POST':
        suhu_11 = request.POST['suhu_11']
        suhu_10 = request.POST['suhu_10']
        suhu_9 = request.POST['suhu_9']
        suhu_8 = request.POST['suhu_8']
        suhu_7 = request.POST['suhu_7']
        suhu_6 = request.POST['suhu_6']
        suhu_5 = request.POST['suhu_5']
        suhu_4 = request.POST['suhu_4']
        suhu_3 = request.POST['suhu_3']
        suhu_2 = request.POST['suhu_2']
        suhu_1 = request.POST['suhu_1']
        suhu_dday = request.POST['suhu_dday']

        suhu_mikro = [[suhu_11, suhu_10, suhu_9, suhu_8, suhu_7,
                       suhu_6, suhu_5, suhu_4, suhu_3, suhu_2, suhu_1, suhu_dday]]

        test_X = np.fft.fft(suhu_mikro)
        test_X = test_X.reshape((test_X.shape[0], 1, test_X.shape[1]))

        model = sett.model

        # membuat prediksi
        predict = model.predict(test_X)
        test_X = test_X.reshape((test_X.shape[0], 12))

        # invert scaling untuk prediksi
        prediksi = np.concatenate((test_X, predict), axis=1)
        prediksi = np.fft.ifft(prediksi)
        prediksi = np.abs(prediksi)
        prediksi = prediksi[:, -1]

        result = '%.2f °C' % prediksi[-1]

        request.session['result'] = result

    return redirect('temperature.index')
