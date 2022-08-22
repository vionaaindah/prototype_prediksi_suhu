# from django.contrib.auth.models import User, Group
from .models import PeatlandField
from rest_framework import serializers

class PeatlandFieldSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = PeatlandField
        fields = ['id', 'water_level', 'max_air_temperature', 'date', 'peatland', 'created_at']