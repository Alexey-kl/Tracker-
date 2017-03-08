from __future__ import unicode_literals

from django.db import models

# Create your models here.

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
    magistrant_name = models.CharField(max_length=100)
    magistrant_YearOfReceipt = models.DateTimeField()
    magistrant_YearOfEnding = models.DateTimeField()
    magistrant_NumberOfTheSpecialty = models.IntegerField(default=0)
    magistrant_NameOfSpeciality = models.CharField(max_length=300)
    magistrant_FormOfTraning = models.CharField(max_length=50, choices=magistrant_FormOfTraning_CHOIES)
    magistarnt_TypeOfTraning = models.CharField(max_length=50, choices=magistarnt_TypeOfTraning_CHOIES)
    magistrant_ScientificAdviser = models.CharField(max_length=100)
    magistrant_StatusMagistrant = models.CharField(max_length=100, choices=magistrant_StatusMagistrant_CHOICES)
    magistrant_comment = models.CharField(max_length=400)
