from django.http import HttpResponse
from django.shortcuts import render
from myapp.models import *

def show_about_page (request):
    print("About page is requested")

    name = 'Nature'
    about = 'This is a webpage for nature'

    data = {
        'name': name,
        'about': about
    }
    return render(request, "about.html", data)

def show_home_page (request):
      cats = Category.objects.all()
      images = Image.objects.all()
      data = {'images': images, 'cats': cats}


      return render(request, "home.html", data)

def show_category_page (request,cid):
      print(cid)
      cats = Category.objects.all()
      
      category = Category.objects.get(pk=cid)
    
      images = Image.objects.filter(cat = category)
      data = {'images': images, 'cats': cats}


      return render(request, "home.html", data)