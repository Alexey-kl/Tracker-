# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-04-08 20:30
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0025_auto_20170403_2013'),
    ]

    operations = [
        migrations.AddField(
            model_name='magistrant',
            name='magistrant_IPload',
            field=models.IntegerField(blank=True, default=0, null=True),
        ),
    ]
