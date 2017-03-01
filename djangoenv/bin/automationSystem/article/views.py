from django.shortcuts import render
from django.http.response import HttpResponse
# Create your views here.

def basic_one(request):
    view = "basic_one"
    html = "<html><body>This is %s view</html></body>".format(view)
    return HttpResponse(html)