# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2017-04-29 20:08
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('addMagistrants', '0035_auto_20170419_1730'),
    ]

    operations = [
        migrations.AddField(
            model_name='teacher',
            name='teacher_image',
            field=models.ImageField(blank=True, help_text='150x150px', upload_to='static/image_main/%Y/%m/%d', verbose_name='\u0421\u0441\u044b\u043b\u043a\u0430 \u043a\u0430\u0440\u0442\u0438\u043d\u043a\u0438'),
        ),
    ]
