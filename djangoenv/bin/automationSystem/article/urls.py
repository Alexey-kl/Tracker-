from django.conf.urls import url
from django.contrib import admin
from article import views

urlpatterns = [

    url(r'^1/', views.basic_one, name='basic_one'),
]