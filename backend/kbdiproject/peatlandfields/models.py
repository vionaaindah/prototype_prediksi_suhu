from django.db import models

# Model in other app.
from peatlandcovers.models import PeatlandCover

class PeatlandField(models.Model):
    water_level = models.FloatField(null=True)
    max_air_temperature = models.FloatField(null=True)
    date = models.DateField(auto_now_add=True)
    peatland_cover = models.ForeignKey(PeatlandCover, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.peatland_cover
    
    class Meta:
        ordering = ['created_at']