from django.shortcuts import render, redirect
import numpy as np
import kbdiproject.settings as sett
# Create your views here.


def index(request):
    context = {
        'title': "Prediksi Suhu Udara Makro",
        'navbar': 'temperature'
    }
    return render(request, 'pages/temperature/temperature.html', context)


def store(request):
    if request.method == 'POST':
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

        suhu_mikro = [[suhu_10, suhu_9, suhu_8, suhu_7,
                       suhu_6, suhu_5, suhu_4, suhu_3, suhu_2, suhu_1, suhu_dday]]

        test_X = np.fft.fft(suhu_mikro)
        test_X = test_X.reshape((test_X.shape[0], 1, test_X.shape[1]))

        model = sett.model

        # membuat prediksi
        predict = model.predict(test_X)
        test_X = test_X.reshape((test_X.shape[0], 11))

        # invert scaling untuk prediksi
        prediksi = np.concatenate((test_X, predict), axis=1)
        prediksi = np.fft.ifft(prediksi)
        prediksi = np.abs(prediksi)
        prediksi = prediksi[:, -1]

        hasil_prediksi = '%.2f °C' % prediksi[-1]

        request.session['result'] = True
        request.session['hasil_prediksi'] = hasil_prediksi
        request.session['day_10'] = suhu_mikro[0][0]
        request.session['day_9'] = suhu_mikro[0][1]
        request.session['day_8'] = suhu_mikro[0][2]
        request.session['day_7'] = suhu_mikro[0][3]
        request.session['day_6'] = suhu_mikro[0][4]
        request.session['day_5'] = suhu_mikro[0][5]
        request.session['day_4'] = suhu_mikro[0][6]
        request.session['day_3'] = suhu_mikro[0][7]
        request.session['day_2'] = suhu_mikro[0][8]
        request.session['day_1'] = suhu_mikro[0][9]
        request.session['day'] = suhu_mikro[0][10]

    return redirect('temperature.index')
