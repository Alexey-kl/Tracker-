from django.contrib import admin
from article.models import Article, Comments
# Register your models here.

class ArticleAdmin(admin.ModelAdmin):
# tut ia pishy kolonki DB kotorse doljni otobragatsa v adminke
    fields = ['article_title', 'article_text', 'article_date']
   # inlines = [ArticleInline]
    list_filter = ['article_date']


# class dly gpokaza u redaktir komentov
class ArticleInline(admin.StackedInline):
    model = Comments
# extra - kol-vo komentov
    extra = 2

admin.site.register(Article, ArticleAdmin)