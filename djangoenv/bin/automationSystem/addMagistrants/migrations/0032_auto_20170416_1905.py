# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-04-16 19:05
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0031_magistrant_magistrant_loadip'),
    ]

    operations = [
        migrations.AlterField(
            model_name='magistrant',
            name='magistrant_LoadIP',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
