# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-04-12 18:49
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0026_magistrant_magistrant_ipload'),
    ]

    operations = [
        migrations.AlterField(
            model_name='magistrant',
            name='magistrant_FormOfTrainingLoad',
            field=models.CharField(choices=[('Time pay', 'Time pay'), ('IP', 'IP')], default=1, max_length=15, verbose_name='Vipolnenie uch nagruzki'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='magistrant',
            name='magistrant_StudyPeriod',
            field=models.FloatField(default=0, verbose_name='Study period'),
        ),
    ]
