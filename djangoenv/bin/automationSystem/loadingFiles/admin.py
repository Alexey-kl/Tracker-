from django.contrib import admin
from loadingFiles.models import Article
# Register your models here.

class loadingFiles(admin.ModelAdmin):
    fields = ['file_obj']

admin.site.register(Article, loadingFiles)