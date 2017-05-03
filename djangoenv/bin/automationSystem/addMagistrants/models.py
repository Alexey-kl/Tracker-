# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from django.db import utils
from django.utils import timezone

# Create your models here.

teacher_AcademicDegree_CHOICES = (
    ('к.т.н', 'к.т.н'),
    ('к.ф.м.н', 'к.ф.м.н'),
    ('к.био.н', 'к.био.н'),
    ('к.псих.н', 'к.псих.н'),
    ('к.мед.н', 'к.мед.н'),
    ('к.эконом.н', 'к.эконом.н'),
    ('д.т.н', 'д.т.н'),
    ('д.ф.м.н', 'д.ф.м.н'),
    ('д.био.н', 'д.био.н'),
    ('д.псих.н', 'д.псих.н'),
    ('д.мед.н', 'д.мед.н'),
    ('д.эконом.н', 'д.эеоном.н'),
)

teacher_AcademicRank_CHOICES = (
    ('Нет', 'Нет'),
    ('Доцент', 'Доцент'),
    ('Профессор', 'Профессор'),
)

class Teacher(models.Model):
    class Meta():
        db_table = 'teacher'
    teacher_name = models.CharField(max_length=100, verbose_name=u'ФИО преподавателя')
    teacher_AcademicDegree = models.CharField(max_length=100, choices=teacher_AcademicDegree_CHOICES, verbose_name=u'Учёная степень')
    teacher_AcademicRank = models.CharField(max_length=100, choices=teacher_AcademicRank_CHOICES, verbose_name=u'Учёное звание')
    teacher_work = models.CharField(max_length=100, verbose_name=u'Основное место работы')
    teacher_position = models.CharField(max_length=100, verbose_name=u'Должность')
    teacher_comment = models.CharField(max_length=400, blank=True, verbose_name=u'Примечание')
    teacher_load = models.ForeignKey('Magistrant', blank=True, null=True)
    def __unicode__(self):
        return '%s' % (self.teacher_name)



magistrant_StatusMagistrant_CHOICES = (
    (u'Обучается', u'Обучается'),
    (u'Отчислен', u'Отчислен'),
    (u'Академический отпуск', u'Академический отпуск'),
    (u'Закончил', u'Закончил'),
)

magistrant_FormOfTraning_CHOIES = (
    (u'Платное', u'Платное'),
    (u'Бюджет', u'Бюджет'),
)

magistarnt_TypeOfTraning_CHOIES = (
    (u'Очное', u'Очное'),
    (u'Заочное', u'Заочное'),
)

magistrant_FormOfTrainingLoad_CHOICES = (
    (u'По договору', u'По договору'),
    (u'ИП', u'ИП'),
)

magistrant_StudyPeriod_CHOICES = (
    (u'1-а годичная', u'1-а годичная'),
    (u'2-х годичная', u'2-х годичная'),
)

class Magistrant(models.Model):
    class Meta():
        db_table = 'magistrant'
    magistrant_name = models.CharField(max_length=100, verbose_name=u"ФИО магистранта")
    magistrant_YearOfReceipt = models.DateField(blank=True, null=True, verbose_name=u"Год начала обучения")
    magistrant_YearOfEnding = models.DateField(blank=True, null=True, verbose_name=u"Год окончания обучения")
    magistrant_NumberOfTheSpecialty = models.IntegerField(default=0, verbose_name=u"Номер специальности")
    magistrant_NameOfSpeciality = models.CharField(max_length=300, verbose_name=u"Название специальности")
    magistrant_FormOfTraning = models.CharField(max_length=50, choices=magistrant_FormOfTraning_CHOIES, verbose_name=u"Форма обучения")
    magistarnt_TypeOfTraning = models.CharField(max_length=50, choices=magistarnt_TypeOfTraning_CHOIES, verbose_name=u"Тип обучения")
    magistrant_StatusMagistrant = models.CharField(max_length=100, choices=magistrant_StatusMagistrant_CHOICES, verbose_name=u"Статус магистранта")
    magistrant_comment = models.CharField(max_length=400, blank=True, verbose_name=u"Примечание")
    magistrant_ScientificAdviser = models.ForeignKey(Teacher, verbose_name=u"Имя преподавателя")
    magistrant_ThemeOfMagistrWork = models.CharField(max_length=100, blank=True, verbose_name=u"Тема магистерской работы")
    magistrant_NumberOrder = models.CharField(max_length=15, blank=True, verbose_name=u"Номер приказа")
    magistrant_OrderFromDate = models.DateField(blank=True, null=True, verbose_name=u"Дата приказа")
    magistrant_FormOfTrainingLoad = models.CharField(max_length=15, verbose_name=u"Выполнение учебной нагрузки", choices=magistrant_FormOfTrainingLoad_CHOICES  )
    magistrant_StudyPeriod = models.CharField(max_length=15, verbose_name=u"Система образования", choices=magistrant_StudyPeriod_CHOICES)
    magistrant_Email = models.EmailField(max_length=254, blank=True, verbose_name=u"Адрес электронной почты")
    magistrant_Phone = models.CharField(max_length=20, blank=True, verbose_name=u"Телефон")
    magistrant_Load = models.CharField(max_length=20, blank=True, null=True)
    magistrant_LoadIP = models.CharField(max_length=20,blank=True, null=True)

    def __unicode__(self):
        return '%s' % (self.magistrant_name)




class Load(models.Model):
    class Meta():
        db_table = 'load'
    load_teacher = models.ForeignKey(Teacher)
    load_magistrant = models.ForeignKey(Magistrant)
    load_IPload = models.IntegerField(default=0,blank=True, null=True)
    load_TimePayload = models.IntegerField(default=0,blank=True, null=True)
    load_allLoad = models.IntegerField(default=0,blank=True, null=True)



