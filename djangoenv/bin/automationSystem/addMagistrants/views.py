#-*- coding: utf-8 -*-

from django.shortcuts import render
from django.shortcuts import  render_to_response, redirect
from models import Magistrant, Teacher
from django.template.context_processors import csrf
from django.db.models import Sum
from django.http import HttpResponse, StreamingHttpResponse
import csv



# Create your views here.
#-*- coding: utf-8 -*-
#def magistrants(request):
#    return render_to_response('magistrants.html', {'magistrants': Magistrant.objects.all()})
def magistrants(request):
    return render_to_response('magistrants.html', {'magistrants': Magistrant.objects.filter(magistrant_StatusMagistrant='study')})
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
    #args['teacher'] = Teacher.objects.all()
    #args['teacherName'] = Teacher.objects.get(id=magistrant_id)

    return render_to_response('MagistrantInformAll.html', args)


def TeacherMagistr(request, teacher_id=1):
    args = {}
    args.update(csrf(request))
    args['teacher'] = Teacher.objects.get(id=teacher_id)
    args['magistrant'] = Magistrant.objects.filter(magistrant_ScientificAdviser_id=teacher_id, magistrant_StatusMagistrant='study')
    args['magistrant_IPload'] = Magistrant.objects.filter(magistrant_FormOfTrainingLoad="IP",magistrant_ScientificAdviser_id=teacher_id,magistrant_StatusMagistrant="study").aggregate(Sum('magistrant_Load')).get('magistrant_Load__sum', 0.00)
    args['magistrant_TimePay'] = Magistrant.objects.filter(magistrant_FormOfTrainingLoad="Time pay",magistrant_ScientificAdviser_id=teacher_id,magistrant_StatusMagistrant="study").aggregate(Sum('magistrant_Load')).get('magistrant_Load__sum', 0.00)
    if args['magistrant_IPload'] == None:
        args['sum_load'] = 0 + args['magistrant_TimePay']
    else:
        if args['magistrant_TimePay'] == None:
            args['sum_load'] = 0 + args['magistrant_IPload']
        else:
            args['sum_load'] = args['magistrant_IPload'] + args['magistrant_TimePay']
    mag = Magistrant.objects.all()
    for magistrant in mag:
        if magistrant.magistrant_StudyPeriod == 0:
            magistrant.magistrant_Load = 0
        else:
            magistrant.magistrant_Load = (magistrant.magistrant_StudyPeriod - 1) * 3 + 1.5
        magistrant.save()
    return render_to_response('TeacherInformAll.html', args)



def some_view(request,teacher_id=1, ):
    #Create the HttpResponse object with the appropriate CSV header.
    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="Нагрузка преподавателя.csv"'
    writer = csv.writer(response)
    writer.writerow(['ФИО', 'Учёная степень', 'Учёное звание', 'Основное место работы', 'Должность'])
    teacherInfo = Teacher.objects.filter(id=teacher_id).values_list('teacher_name', 'teacher_AcademicDegree', 'teacher_AcademicRank', 'teacher_work', 'teacher_position')
    for TI in teacherInfo:
        writer.writerow( TI )
    writer.writerow([])
    writer.writerow(['ФИО', 'Номер специальности', 'Форма обучения', 'Тип обучения', 'Специальность', 'Форма выполнения учебной нагрузки', 'Нагрузка', 'Примечание'])
    magistrantsInfo = Magistrant.objects.filter(magistrant_ScientificAdviser_id=teacher_id).values_list('magistrant_name', 'magistrant_NumberOfTheSpecialty', 'magistrant_NameOfSpeciality', 'magistrant_FormOfTraning', 'magistarnt_TypeOfTraning', 'magistrant_FormOfTrainingLoad', 'magistrant_Load', 'magistrant_comment')
    for MI in magistrantsInfo:
        writer.writerow( MI )
    return response



#def test (request, teacher_id=1):
#    args = {}
#    args.update(csrf(request))
#    args['teacher'] = Teacher.objects.get(id=teacher_id)
#    args['magistrant'] = Magistrant.objects.filter(magistrant_ScientificAdviser_id=teacher_id,magistrant_StatusMagistrant='study')
#    args['magistrant_IPload'] = Magistrant.objects.filter(magistrant_FormOfTrainingLoad="IP",magistrant_ScientificAdviser_id=teacher_id,magistrant_StatusMagistrant="study").aggregate(sum('magistrant_Load')).get('magistrant_Load__sum', 0.00)
#    args['magistrant_TimePay'] = Magistrant.objects.filter(magistrant_FormOfTrainingLoad="Time pay",magistrant_ScientificAdviser_id=teacher_id,magistrant_StatusMagistrant="study").aggregate(Sum('magistrant_Load')).get('magistrant_Load__sum', 0.00)


#def load (request, magistrant_id=1, teacher_id=1):
#        magistrant = Magistrant.objects.get(id=magistrant_id)
#        magistrant.magistrant_Load = (magistrant.magistrant_StudyPeriod - 1) * 3 + 1.5
#        magistrant.save()
#        return render_to_response('load.html')

   # teacher = Teacher.objects.get(id=teacher_id)
#    mag = Magistrant.objects.all()
    #IPload = Magistrant.objects.filter(magistrant_FormOfTrainingLoad='IP')
    #magistrant = Magistrant.objects.get(id=magistrant_id)
    #magistrant = Magistrant.objects.get(id=magistrant_id)
#    for magistrant in mag:
#        magistrant.magistrant_Load = (magistrant.magistrant_StudyPeriod - 1) * 3 + 1.5
#        magistrant.save()
#    args = {}
#    args.update(csrf(request))
#    args['magistrant_IPload'] = Magistrant.objects.filter(magistrant_FormOfTrainingLoad="IP",magistrant_ScientificAdviser_id=teacher_id).aggregate(Sum('magistrant_Load')).get('magistrant_Load__sum', 0.00)
#    args['magistrant_TimePay'] = Magistrant.objects.filter(magistrant_FormOfTrainingLoad="Time pay",magistrant_ScientificAdviser_id=teacher_id).aggregate(Sum('magistrant_Load')).get('magistrant_Load__sum', 0.00)
           #return render_to_response('load2.html')
    #return redirect('/added/teachers/infoTeacher/%s/' % teacher_id, args)

#def load_all (request, magistrant_id=1, teacher_id=1):
    #teacher = Teacher.objects.get(id=teacher_id)
    #mag = Magistrant.objects.all()
    #mag = Magistrant.objects.all()
    #args = {}
    #args.update(csrf(request))
   # args['magistrant'] = Magistrant.objects.all()
  #  args['magistrant_IPload']=Magistrant.objects.values('magistrant_FormOfTrainingLoad').annotate(Sum('magistrant_Load')).filter(magistrant_FormOfTrainingLoad = "IP")
    #args['magistrant_IPload']=Magistrant.objects.all().aggregate(Sum('magistrant_Load')).get('magistrant_Load__sum', 0.00)
         #Magistr.magistrant_IPload = Magistr.objects.filter(Magistr.magistrant_FormOfTraning="IP").aggregate(Sum('magist.magistrant_Load'))
 #   return render_to_response('loadIP.html', args)

#def load_all (request, magistrant_id=1, teacher_id=1):
#    mag = Magistrant.objects.all()
#    args = {}
#    args.update(csrf(request))
#    args['magistrant_IPload']=Magistrant.objects.filter(magistrant_FormOfTrainingLoad = "IP", magistrant_ScientificAdviser_id = teacher_id).aggregate(Sum('magistrant_Load')).get('magistrant_Load__sum', 0.00)
#    args['magistrant_TimePay']=Magistrant.objects.filter(magistrant_FormOfTrainingLoad = "Time pay", magistrant_ScientificAdviser_id = teacher_id).aggregate(Sum('magistrant_Load')).get('magistrant_Load__sum', 0.00)
#    return render_to_response('loadIP.html', args)
