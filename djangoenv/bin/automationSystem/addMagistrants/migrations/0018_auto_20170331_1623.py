# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-03-31 16:23
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0017_magistrant_magistrant_load'),
    ]

    operations = [
        migrations.AlterField(
            model_name='magistrant',
            name='magistrant_Load',
            field=models.FloatField(blank=True, default=None, null=True),
        ),
    ]
