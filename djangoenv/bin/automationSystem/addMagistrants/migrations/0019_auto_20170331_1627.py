# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-03-31 16:27
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0018_auto_20170331_1623'),
    ]

    operations = [
        migrations.AlterField(
            model_name='magistrant',
            name='magistrant_Load',
            field=models.FloatField(blank=True, default=0, null=True),
        ),
    ]
