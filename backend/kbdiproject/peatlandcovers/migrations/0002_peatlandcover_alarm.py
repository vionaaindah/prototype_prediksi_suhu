# Generated by Django 4.0.4 on 2022-05-17 09:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('peatlandcovers', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='peatlandcover',
            name='alarm',
            field=models.CharField(max_length=255, null=True),
        ),
    ]
