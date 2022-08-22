from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='kbdis.index'),
    path('store', views.store, name='kbdis.store'),
    path('api', views.drough_factor_list, name='kbdis.api'),
]