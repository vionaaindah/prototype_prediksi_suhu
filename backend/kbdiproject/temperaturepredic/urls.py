from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='temperaturepredic.index'),
    path('store', views.store, name='temperaturepredic.store'),
]
