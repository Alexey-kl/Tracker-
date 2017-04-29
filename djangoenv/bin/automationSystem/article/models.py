# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
class Article(models.Model):
    class Meta():
        db_table = 'article'
    article_title = models.CharField(max_length=200, verbose_name=u"Заголовок статьи")
    article_text = models.TextField(verbose_name=u"Текст статьи")
    article_date = models.DateField(verbose_name=u"Дата написания статьи")
    article_likes = models.IntegerField(default=0)

class Comments(models.Model):
    class Meta():
        db_table = 'comments'
    comments_text = models.TextField(max_length=1000, verbose_name=u" ")
    comments_article = models.ForeignKey(Article)
