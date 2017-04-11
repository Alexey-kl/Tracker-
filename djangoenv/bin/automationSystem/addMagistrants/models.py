from __future__ import unicode_literals

from django.db import models

from django.utils import timezone
# -*- coding: utf-8 -*-
# Create your models here.

teacher_AcademicDegree_CHOICES = (
    ('k.t.n', 'k.t.n'),
    ('k.f.m.n', 'k.f.m.n'),
    ('k.bio.n', 'k.bio.n'),
    ('k.psih.n', 'k.psih.n'),
    ('k.med.n', 'k.med.n'),
    ('k.ikonom.n', 'k.ikonom.n'),
    ('d.t.n', 'd.t.n'),
    ('d.f.m.n', 'd.f.m.n'),
    ('d.bio.n', 'd.bio.n'),
    ('d.psih.n', 'd.psih.n'),
    ('d.med.n', 'd.med.n'),
    ('d.ikonom.n', 'd.ikonom.n'),
)

teacher_AcademicRank_CHOICES = (
    ('not', 'not'),
    ('docent', 'docent'),
    ('professor', 'professor'),
)

class Teacher(models.Model):
    class Meta():
        db_table = 'teacher'
    teacher_name = models.CharField(max_length=100, verbose_name='FIO')
    teacher_AcademicDegree = models.CharField(max_length=100, choices=teacher_AcademicDegree_CHOICES, )
    teacher_AcademicRank = models.CharField(max_length=100, choices=teacher_AcademicRank_CHOICES)
    teacher_work = models.CharField(max_length=100)
    teacher_position = models.CharField(max_length=100)
    teacher_comment = models.CharField(max_length=400, blank=True)
    teacher_load = models.ForeignKey('Magistrant', blank=True, null=True)
    def __unicode__(self):
        return '%s' % (self.teacher_name)




magistrant_StatusMagistrant_CHOICES = (
    ('study', 'Study'),
    ('deducted', 'Deducted'),
    ('holidays', 'Holidays'),
    ('finished', 'Finished'),
)

magistrant_FormOfTraning_CHOIES = (
    ('chargeable', 'Chargeable'),
    ('budget', 'Budget'),
)

magistarnt_TypeOfTraning_CHOIES = (
    ('daytime', 'Daytime'),
    ('eveningtime', 'Evningtime'),
)

magistrant_FormOfTrainingLoad_CHOICES = (
    ('Time pay', 'Time pay'),
    ('IP', 'IP'),
)


class Magistrant(models.Model):
    class Meta():
        db_table = 'magistrant'
    magistrant_name = models.CharField(max_length=100, verbose_name="FIO magistrant")
    magistrant_YearOfReceipt = models.DateField(blank=True, null=True, verbose_name="God nachalo")
    magistrant_YearOfEnding = models.DateField(blank=True, null=True, verbose_name="God okonchania")
    magistrant_NumberOfTheSpecialty = models.IntegerField(default=0)
    magistrant_NameOfSpeciality = models.CharField(max_length=300)
    magistrant_FormOfTraning = models.CharField(max_length=50, choices=magistrant_FormOfTraning_CHOIES)
    magistarnt_TypeOfTraning = models.CharField(max_length=50, choices=magistarnt_TypeOfTraning_CHOIES)
    magistrant_StatusMagistrant = models.CharField(max_length=100, choices=magistrant_StatusMagistrant_CHOICES)
    magistrant_comment = models.CharField(max_length=400, blank=True)
    magistrant_ScientificAdviser = models.ForeignKey(Teacher)
    magistrant_ThemeOfMagistrWork = models.CharField(max_length=100, blank=True)
    magistrant_NumberOrder = models.CharField(max_length=15, blank=True)
    magistrant_OrderFromDate = models.DateField(blank=True, null=True, verbose_name="Date Order")
    magistrant_FormOfTrainingLoad = models.CharField(max_length=15, blank=True, null=True, verbose_name="Vipolnenie uch nagruzki", choices=magistrant_FormOfTrainingLoad_CHOICES  )
    magistrant_StudyPeriod = models.FloatField(default=0, null=True, verbose_name="Study period")
    magistrant_Email = models.EmailField(max_length=254, blank=True, verbose_name="Email")
    magistrant_Phone = models.CharField(max_length=20, blank=True, verbose_name="Phone")
    magistrant_Load = models.CharField(max_length=20, blank=True, null=True)
    magistrant_IPload = models.IntegerField(default=0, blank=True, null=True)
    def __unicode__(self):
        return '%s' % (self.magistrant_name)





