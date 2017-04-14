from __future__ import unicode_literals

from django.db import models

# Create your models here.

class Article(models.Model):
    class Meta():
        db_table = 'loading'
    file_obj = models.FileField(upload_to='media/')