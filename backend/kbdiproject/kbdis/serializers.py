# from django.contrib.auth.models import User, Group
from .models import DroughtIndex, DroughtFactor
from peatlandcovers.serializers import PeatlandCoverSerializer
from rest_framework import serializers

class DroughtIndexSerializer(serializers.HyperlinkedModelSerializer):
    peatland_cover = PeatlandCoverSerializer(many=False, read_only=True)

    class Meta:
        model = DroughtIndex
        fields = ['id', 'kbdi', 'date', 'status', 'peatland_cover', 'created_at']
        ordering = ['created_at']

class DroughtFactorSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = DroughtFactor
        fields = ['id', 'drought_factor', 'date', 'created_at']
        ordering = ['created_at']