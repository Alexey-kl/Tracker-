# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-04-14 19:33
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0027_auto_20170412_1849'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='magistrant',
            name='magistrant_IPload',
        ),
    ]