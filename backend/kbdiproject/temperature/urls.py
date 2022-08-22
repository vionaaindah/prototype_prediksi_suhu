from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='temperature.index'),
    path('store', views.store, name='temperature.store'),
]
