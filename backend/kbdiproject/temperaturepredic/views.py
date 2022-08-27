from django.shortcuts import render, redirect
import numpy as np
import pandas as pd
import kbdiproject.settings as sett
# Create your views here.


def index(request):
    context = {
        'title': "Prediksi Suhu Udara Makro",
        'navbar': 'temperature'
    }

    return render(request, 'pages/temperaturepredict/temperaturepredict.html', context)


def store(request):
    if request.method == 'POST':
        file = request.FILES['file']

        mikro = pd.read_csv(file, sep=',', parse_dates=['Tanggal'],
                            infer_datetime_format=True, low_memory=False, na_values=['nan', '?'],
                            index_col='Tanggal')

        def reshape_data(interval, parameter):
            global caps
            global data, col_header, df
            data = []
            row = interval.shape[0]
            row = row-parameter

            for i in range(row):
                end = i+parameter+1
                # mengambil data input sejumlah parameter dan 1 data target
                val = interval.values[i:end].reshape(parameter+1)
                data.append(val)  # menambah nilai array

            df = pd.DataFrame(data)  # menjadikan array menjadi dataframe

        parameter = 10
        reshape_data(mikro, parameter)
        suhu_mikro = df.values

        for j in range(0, parameter+1):
            df.iloc[:, j] = df.iloc[:, j].fillna(
                df.iloc[:, j].ewm(halflife=4).mean())

        test_X = np.fft.fft(df[-1:])
        test_X = test_X.reshape((test_X.shape[0], 1, test_X.shape[1]))

        model = sett.model_makro

        # membuat prediksi
        predict = model.predict(test_X)
        test_X = test_X.reshape((test_X.shape[0], 11))

        # invert scaling untuk prediksi
        prediksi = np.concatenate((test_X, predict), axis=1)
        prediksi = np.fft.ifft(prediksi)
        prediksi = np.abs(prediksi)
        prediksi = prediksi[:, -1]

        hasil_prediksi = '%.2f °C' % prediksi[-1]
        suhu_mikro = suhu_mikro.tolist()
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

    return redirect('temperaturepredic.index')
