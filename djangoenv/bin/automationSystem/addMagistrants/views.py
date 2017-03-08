from django.shortcuts import render
from django.shortcuts import  render_to_response, redirect
# Create your views here.

def magistrants(request):
    return render_to_response('magistrants.html')