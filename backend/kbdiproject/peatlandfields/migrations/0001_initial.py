# Generated by Django 4.0.4 on 2022-05-17 01:32

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('peatlandcovers', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='PeatlandField',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('water_level', models.FloatField(null=True)),
                ('max_air_temperature', models.FloatField(null=True)),
                ('date', models.DateField(auto_now_add=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('peatland_cover', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='peatlandcovers.peatlandcover')),
            ],
            options={
                'ordering': ['created_at'],
            },
        ),
    ]