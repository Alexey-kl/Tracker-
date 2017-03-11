from django.shortcuts import render
from django.shortcuts import  render_to_response, redirect
from models import Magistrant, Teacher
# Create your views here.

def magistrants(request):
    return render_to_response('magistrants.html', {'magistrants': Magistrant.objects.all()})

def teachers(request):
    return render_to_response('teachers.html')

