from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='cover.index'),
    path('store', views.store, name='cover.store'),
    path('api', views.peatland_cover_list, name='cover.api')
]