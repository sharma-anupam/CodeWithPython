from django.forms import ModelForm,TextInput
from weather_app.models import City
class CityForm(ModelForm):
    class Meta:
        model = City
        fields = ['city_name']
        widgets = {'city_name': TextInput(attrs={'class': 'input, form-control ', 'placeholder':'Input City Name'})}