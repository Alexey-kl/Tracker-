# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-03-20 19:38
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0007_remove_teacher_teacher_mag'),
    ]

    operations = [
        migrations.AddField(
            model_name='teacher',
            name='teacher_mag',
            field=models.ManyToManyField(blank=True, null=True, to='addMagistrants.Magistrant'),
        ),
    ]
