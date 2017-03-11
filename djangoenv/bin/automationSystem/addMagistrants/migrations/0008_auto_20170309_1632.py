# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-03-09 16:32
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0007_auto_20170309_1622'),
    ]

    operations = [
        migrations.AddField(
            model_name='magistrant',
            name='magistrant_teacher',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='addMagistrants.Teacher'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='magistrant',
            name='magistrant_NameOfSpeciality',
            field=models.CharField(max_length=300),
        ),
        migrations.AlterField(
            model_name='magistrant',
            name='magistrant_ScientificAdviser',
            field=models.CharField(max_length=100),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='teacher_position',
            field=models.CharField(max_length=100),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='teacher_work',
            field=models.CharField(max_length=100),
        ),
    ]
