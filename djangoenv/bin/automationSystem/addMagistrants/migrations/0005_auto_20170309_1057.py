# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-03-09 10:57
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0004_auto_20170308_2250'),
    ]

    operations = [
        migrations.CreateModel(
            name='Teacher',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('teacher_name', models.CharField(max_length=100, verbose_name='FIO teacher')),
                ('teacher_AcademicDegree', models.CharField(max_length=100)),
                ('teacher_AcademicRank', models.CharField(max_length=100)),
                ('teacher_work', models.CharField(max_length=100)),
                ('teacher_position', models.CharField(max_length=100)),
                ('teacher_comment', models.CharField(max_length=400)),
            ],
            options={
                'db_table': 'teacher',
            },
        ),
        migrations.AlterField(
            model_name='magistrant',
            name='magistrant_name',
            field=models.CharField(max_length=100, verbose_name='FIO magistrant'),
        ),
    ]
