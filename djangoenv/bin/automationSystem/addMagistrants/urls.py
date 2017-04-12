from django.conf.urls import url
from django.contrib import admin
from addMagistrants import views
from django.contrib import admin
from django.conf.urls import include
# -*- coding: utf-8 -*-
urlpatterns = [
    url(r'^teachers/$', views.teachers, name='teachers'),
    url(r'^all/$', views.magistrants, name='magistrants'),
   # url(r'infoTeacher/(?P<teacher_id>\d+)/$', views.TeacherInfomrAll, name='TeacherInfomrAll'),
     url(r'infoTeacher/(?P<teacher_id>\d+)/$', views.TeacherMagistr, name='TeacherMagistr'),
    #url(r'infoTeacher/(?P<teacher_id>\d+)/load2/$', views.load2, name='load2'),
    #url(r'infoMagistr/(?P<magistrant_id>\d+)/load/$', views.load, name='load'),
   #url(r'infoTeacher/(?P<teacher_id>\d+)/loadIP/$', views.load_all, name='load_all'),
    url(r'infoMagistr/(?P<magistrant_id>\d+)/$', views.MagistrantInfoemAll, name='MagistrantInfoemAll'),
      # url(r'magistrants/all/', views.sort, name='sort')
  #  url(r'^/admin/addMagistrants/teacher/{{ teacher.id }}/change/', admin.site.urls),


]