# coding=utf-8
from django.conf.urls import patterns, include, url
from django.conf.urls import url
from loginsys import views

urlpatterns = [

    url(r'^login/$', views.login, name='login'),
    url(r'^logout/$', views.logout, name='logout'),

]