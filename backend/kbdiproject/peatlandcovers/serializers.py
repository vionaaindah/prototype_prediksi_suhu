# from django.contrib.auth.models import User, Group
from .models import PeatlandCover
from rest_framework import serializers

class PeatlandCoverSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = PeatlandCover
        fields = ['name']

