from django.contrib import admin
from article.models import Article, Comments
# Register your models here.

class ArticleAdmin(admin.ModelAdmin):
# here specify the DB column that appears in the administration panel
    fields = ['article_title', 'article_text', 'article_date']
   # inlines = [ArticleInline]
    list_display = ['article_title']
    list_filter = ['article_date', 'article_title']

# class for view and change comments
class ArticleInline(admin.StackedInline):
    model = Comments
# extra - amount comments
    extra = 2

admin.site.register(Article, ArticleAdmin)