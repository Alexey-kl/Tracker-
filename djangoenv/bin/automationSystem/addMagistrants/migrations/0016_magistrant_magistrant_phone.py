# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-03-31 09:01
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0015_magistrant_magistrant_email'),
    ]

    operations = [
        migrations.AddField(
            model_name='magistrant',
            name='magistrant_Phone',
            field=models.CharField(blank=True, max_length=20, verbose_name='Phone'),
        ),
    ]
