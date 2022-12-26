# prototype_prediksi_suhu

### Installation

1. Clone the repository
   ```sh
   git clone https://github.com/vionaaindah/prototype_prediksi_suhuI.git
   cd prototype_prediksi_suhu
   ```
2. Install the required environment with virtualenv **(recommendation)**

   - Linux/macOs
     ```sh
     virtualenv env
     source env/bin/activate
     pip install -r requirements.txt
     ```
   - Windows
     ```sh
     python -m venv env
     env\scripts\activate
     pip install -r requirements.txt
     ```
     
3. Start on the local webserver

   ```sh
   python manage.py runserver
   ```

   Now, your local webserver is running in `http://localhost:8000/`. You can also open the Django admin site in `http://localhost:8000/kotliteadm` and log in using the superuser account.
