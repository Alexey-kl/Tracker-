# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-04-16 19:02
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0030_auto_20170416_1838'),
    ]

    operations = [
        migrations.AddField(
            model_name='magistrant',
            name='magistrant_LoadIP',
            field=models.IntegerField(blank=True, default=0, null=True),
        ),
    ]
