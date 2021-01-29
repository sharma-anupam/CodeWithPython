from django.shortcuts import render
from django.http import HttpResponse
import requests
from weather_app.models import City
from weather_app.forms import CityForm
import json


def analyse_weather(request):
    if request.method == 'POST':
        form = CityForm(request.POST)
        form.save()
    # calling api here : 
    URL = 'http://api.openweathermap.org/data/2.5/weather?q={}&units=metric&appid=f46c89781ea182234708e824d0d7ee50'

    form = CityForm()

    cities = City.objects.all()
  
    for city in cities:

        source_data = requests.get(URL.format(city))

            # converting json data to python native datatype : dictionary
        json_data = source_data.json()

        # reading the data
        weather_data = []

        city_data = {
            'city':city.city_name,
            'icon': str(json_data['weather'][0]['icon']),
            'country_code': str(json_data['sys']['country']),
            'temperature': str(json_data['main']['temp']),
            'w_pressure':  str(json_data['main']['pressure']),
            'w_humidity':  str(json_data['main']['humidity']),
            'w_type': str(json_data['weather'][0]['main']),
            'w_description' : str(json_data['weather'][0]['description']),
            'wind_speed': str(json_data['wind']['speed']),
        }

        weather_data.append(city_data)
        
    # print(city_data)
    context = {'weather_data':weather_data, 'weather_form':form}
    
    return render(request,'weather_app/index.html',context)
