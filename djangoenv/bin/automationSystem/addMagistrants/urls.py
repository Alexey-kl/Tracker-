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
    url(r'infoMagistr/(?P<magistrant_id>\d+)/$', views.MagistrantInfoemAll, name='MagistrantInfoemAll'),
  #  url(r'^/admin/addMagistrants/teacher/{{ teacher.id }}/change/', admin.site.urls),


]