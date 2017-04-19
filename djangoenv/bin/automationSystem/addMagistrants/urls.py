# -*- coding: utf-8 -*-
from django.conf.urls import url
from django.contrib import admin
from addMagistrants import views
from django.contrib import admin
from django.conf.urls import include

urlpatterns = [
    url(r'^teachers/$', views.teachers, name='teachers'),
    url(r'^all/$', views.magistrants, name='magistrants'),
   # url(r'infoTeacher/(?P<teacher_id>\d+)/$', views.TeacherInfomrAll, name='TeacherInfomrAll'),
     url(r'infoTeacher/(?P<teacher_id>\d+)/$', views.TeacherMagistr, name='TeacherMagistr'),
    #url(r'infoTeacher/(?P<teacher_id>\d+)/load2/$', views.load2, name='load2'),
    #url(r'infoMagistr/(?P<magistrant_id>\d+)/load/$', views.load, name='load'),
   #url(r'infoTeacher/(?P<teacher_id>\d+)/loadIP/$', views.load_all, name='load_all'),
    url(r'infoMagistr/(?P<magistrant_id>\d+)/$', views.MagistrantInfoemAll, name='MagistrantInfoemAll'),
    url(r'infoTeacher/(?P<teacher_id>\d+)/some_view/$', views.some_view, name='some_view'),
    url(r'^teachers/all_teachers/$', views.infoAllTeachers, name='infoAllTeachers'),
    url(r'^all/all_magistrants/$', views.infoAllMagistrants, name='infoAllMagistrants'),
    url(r'infoMagistr/(?P<magistrant_id>\d+)/mag_info/$', views.mag_info, name='mag_info'),
    #url(r'infoTeacher/(?P<teacher_id>\d+)/test/$', views.test, name='test'),
      # url(r'magistrants/all/', views.sort, name='sort')
  #  url(r'^/admin/addMagistrants/teacher/{{ teacher.id }}/change/', admin.site.urls),


]