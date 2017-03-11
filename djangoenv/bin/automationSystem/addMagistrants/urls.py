from django.conf.urls import url
from django.contrib import admin
from addMagistrants import views

urlpatterns = [

    url(r'^all/$', views.magistrants, name='magistrants'),
    url(r'^all/teachers$', views.teachers, name='teachers'),
]