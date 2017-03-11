from django.contrib import admin
from addMagistrants.models import Magistrant
from addMagistrants.models import Teacher

# Register your models here.


class MagistrantsAdmin(admin.ModelAdmin):
# here specify the DB column that appears in the administration panel
    fields = ['magistrant_name', 'magistrant_YearOfReceipt', 'magistrant_YearOfEnding', 'magistrant_NumberOfTheSpecialty', 'magistrant_NameOfSpeciality', 'magistrant_FormOfTraning', 'magistarnt_TypeOfTraning', 'magistrant_ScientificAdviser', 'magistrant_StatusMagistrant', 'magistrant_comment' ]
   # inlines = [ArticleInline]
    list_filter = ['magistrant_YearOfReceipt', 'magistrant_YearOfEnding']
    list_display = ['magistrant_name']

admin.site.register(Magistrant, MagistrantsAdmin)

class TeacherAdmin(admin.ModelAdmin):
    fields = ['teacher_name', 'teacher_AcademicDegree', 'teacher_AcademicRank', 'teacher_work', 'teacher_position', 'teacher_comment']
    list_filter = ['teacher_name', 'teacher_AcademicDegree', 'teacher_AcademicRank']
    list_display = ['teacher_name']

admin.site.register(Teacher, TeacherAdmin)