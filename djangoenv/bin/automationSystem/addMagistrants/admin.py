from django.contrib import admin
from addMagistrants.models import Magistrant

# Register your models here.


class MagistrantsAdmin(admin.ModelAdmin):
# here specify the DB column that appears in the administration panel
    fields = ['magistrant_name', 'magistrant_YearOfReceipt', 'magistrant_YearOfEnding', 'magistrant_NumberOfTheSpecialty', 'magistrant_NameOfSpeciality', 'magistrant_FormOfTraning', 'magistarnt_TypeOfTraning', 'magistrant_ScientificAdviser', 'magistrant_StatusMagistrant', 'magistrant_comment' ]
   # inlines = [ArticleInline]
    list_filter = ['magistrant_YearOfReceipt', 'magistrant_YearOfEnding']

admin.site.register(Magistrant, MagistrantsAdmin)