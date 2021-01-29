from django.urls import path,include
from weather_app import views
urlpatterns = [
    path('get_weather/',views.analyse_weather,name = 'wethr_app')
]