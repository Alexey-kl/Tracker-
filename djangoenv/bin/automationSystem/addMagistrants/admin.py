# -*- coding: utf-8 -*-
from django.contrib import admin
from addMagistrants.models import Magistrant
from addMagistrants.models import Teacher

# Register your models here.

class TeacherAdmin(admin.ModelAdmin):
    fields = ['teacher_name', 'teacher_AcademicDegree', 'teacher_AcademicRank', 'teacher_work', 'teacher_position', 'teacher_comment']
    list_filter = ['teacher_AcademicDegree', 'teacher_AcademicRank', 'teacher_work', 'teacher_position']
    list_display = ['teacher_name']


admin.site.register(Teacher, TeacherAdmin)

class MagistrantsAdmin(admin.ModelAdmin):
# here specify the DB column that appears in the administration panel
   fields = ['magistrant_name', 'magistrant_Email', 'magistrant_Phone', 'magistrant_YearOfReceipt', 'magistrant_YearOfEnding', 'magistrant_StudyPeriod', 'magistrant_NumberOfTheSpecialty', 'magistrant_NameOfSpeciality', 'magistrant_FormOfTraning', 'magistarnt_TypeOfTraning', 'magistrant_ScientificAdviser', 'magistrant_StatusMagistrant', 'magistrant_comment', 'magistrant_ThemeOfMagistrWork', 'magistrant_NumberOrder', 'magistrant_OrderFromDate', 'magistrant_FormOfTrainingLoad']
   list_filter = ['magistrant_YearOfReceipt', 'magistrant_YearOfEnding','magistrant_StudyPeriod','magistrant_FormOfTraning', 'magistarnt_TypeOfTraning', 'magistrant_StatusMagistrant']
   list_display = ['magistrant_name', 'magistrant_YearOfReceipt', 'magistrant_NameOfSpeciality', 'magistrant_ScientificAdviser', 'magistarnt_TypeOfTraning']



admin.site.register(Magistrant, MagistrantsAdmin)

