from django.contrib import admin
from django.urls import path
from myapp import views

urlpatterns = [
        path('base/',views.base),
        path('home/',views.home,name='homepage'),
        path('currentaffairs/',views.currentaffairs,name='currentaffairspage'),
        path('sawaljawab/',views.sawaljawab,name='sawaljawabpage'),
        path('reasoning/',views.reasoning,name='reasoningpage'),
        path('aptitude/',views.aptitude,name='aptitudepage'),
        path('english/',views.english,name='englishpage'),
        path('gujarati/',views.gujarati,name='gujaratipage'),
        path('aboutus/',views.AboutUs,name='aboutus'),
]
