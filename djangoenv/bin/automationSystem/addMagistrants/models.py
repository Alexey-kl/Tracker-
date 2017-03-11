from __future__ import unicode_literals

from django.db import models

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
    teacher_name = models.CharField(max_length=100, verbose_name="FIO teacher")
    teacher_AcademicDegree = models.CharField(max_length=100, choices=teacher_AcademicDegree_CHOICES)
    teacher_AcademicRank = models.CharField(max_length=100, choices=teacher_AcademicRank_CHOICES)
    teacher_work = models.CharField(max_length=100)
    teacher_position = models.CharField(max_length=100)
    teacher_comment = models.CharField(max_length=400, default='DEFAULT VALUE')



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

class Magistrant(models.Model):
    class Meta():
        db_table = 'magistrant'
    magistrant_name = models.CharField(max_length=100, verbose_name="FIO magistrant")
    magistrant_YearOfReceipt = models.DateTimeField()
    magistrant_YearOfEnding = models.DateTimeField()
    magistrant_NumberOfTheSpecialty = models.IntegerField(default=0)
    magistrant_NameOfSpeciality = models.CharField(max_length=300)
    magistrant_FormOfTraning = models.CharField(max_length=50, choices=magistrant_FormOfTraning_CHOIES)
    magistarnt_TypeOfTraning = models.CharField(max_length=50, choices=magistarnt_TypeOfTraning_CHOIES)
    magistrant_ScientificAdviser = models.CharField(max_length=100)
    magistrant_StatusMagistrant = models.CharField(max_length=100, choices=magistrant_StatusMagistrant_CHOICES)
    magistrant_comment = models.CharField(max_length=400, default='DEFAULT VALUE')
    magistrant_teacher = models.ForeignKey(Teacher)