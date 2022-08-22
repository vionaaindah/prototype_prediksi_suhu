from django.db import models

# Model in other app.
from peatlandcovers.models import PeatlandCover

# Create your models here.
class DroughtIndex(models.Model):
    kbdi = models.FloatField()
    date = models.DateField(auto_now_add=True)
    status = models.CharField(max_length=255, null=True)
    peatland_cover = models.ForeignKey(PeatlandCover, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.kbdi)
    
    class Meta:
        ordering = ['created_at']


class DroughtFactor(models.Model):
    drought_factor = models.FloatField()
    date = models.DateField(auto_now_add=True)
    peatland_cover = models.ForeignKey(PeatlandCover, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.drought_factor
    
    class Meta:
        ordering = ['created_at']