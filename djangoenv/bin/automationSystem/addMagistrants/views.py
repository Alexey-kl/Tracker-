from django.shortcuts import render
from django.shortcuts import  render_to_response, redirect
from models import Magistrant, Teacher
from django.template.context_processors import csrf
# Create your views here.

def magistrants(request):
    return render_to_response('magistrants.html', {'magistrants': Magistrant.objects.all()})

def teachers(request):
        return render_to_response('teachers.html', {'teachers': Teacher.objects.all()})


#def TeacherInfomrAll(request, teacher_id=1):
#    return render_to_response('TeacherInformAll.html', {'teacher': Teacher.objects.get(id=teacher_id)})

def MagistrantInfoemAll (request, magistrant_id=1, teacher_id=1):
    args = {}
    args.update(csrf(request))
    args['magistrant'] = Magistrant.objects.get(id=magistrant_id)
   # args['Themagistrant'] = Magistrant.objects.filter(magistrant_ThemeOfMagistrWork=magistrant_id)
  #  args['NumberOrder'] = Magistrant.objects.filter(magistrant_NumberOrder=magistrant_id)
    args['teacher'] = Teacher.objects.all()
    args['teacherName'] = Teacher.objects.get(id=magistrant_id)
    return render_to_response('MagistrantInformAll.html', args)


def TeacherMagistr(request, teacher_id=1):
    args = {}
    args.update(csrf(request))
    args['teacher'] = Teacher.objects.get(id=teacher_id)
    args['magistrant'] = Magistrant.objects.filter(magistrant_ScientificAdviser_id=teacher_id)
    return render_to_response('TeacherInformAll.html', args)
