# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-04-01 19:44
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0022_auto_20170401_1942'),
    ]

    operations = [
        migrations.AlterField(
            model_name='magistrant',
            name='magistrant_StudyPeriod',
            field=models.FloatField(default=0, null=True, verbose_name='Study period'),
        ),
    ]