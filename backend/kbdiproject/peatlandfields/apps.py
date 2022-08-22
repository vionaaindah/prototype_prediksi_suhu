from django.apps import AppConfig

class PeatlandfieldsConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'peatlandfields'
    
    def ready(self):
        from .cron import start
        start()