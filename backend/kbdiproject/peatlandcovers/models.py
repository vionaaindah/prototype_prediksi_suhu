from django.db import models

# Create your models here.
class PeatlandCover(models.Model):
    name = models.CharField(max_length=255)
    image = models.CharField(max_length=255)
    alarm = models.CharField(max_length=255, null=True)
    # dense = models.FloatField()
    # medium = models.FloatField()
    # bare = models.FloatField()
    result_type = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)

    # def __str__(self):
    #     return self.image
    
    class Meta:
        ordering = ['created_at']