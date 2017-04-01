# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-03-31 18:48
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0020_auto_20170331_1701'),
    ]

    operations = [
        migrations.AlterField(
            model_name='magistrant',
            name='magistrant_Load',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='magistrant',
            name='magistrant_StudyPeriod',
            field=models.FloatField(default=0, null=True, verbose_name='Study period'),
        ),
    ]
