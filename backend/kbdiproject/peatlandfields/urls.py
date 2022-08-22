from django.urls import path
from . import views

urlpatterns = [
    path('', views.peatland_list, name='peatlands'),
]