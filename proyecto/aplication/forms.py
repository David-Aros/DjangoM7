from django import forms
from .models import Contacto
from .models import Suscriptores
from .models import Portafolio
from django.contrib.auth.forms import UserCreationForm

class ContactoForm(forms.ModelForm):

    class Meta:
        model = Contacto
        #fields = ["nombre", "email", "direccion", "consulta", "mensaje"]
        fields = '__all__'

class SuscriptoresForm(forms.ModelForm):

    class Meta:
        model = Suscriptores
        #fields = ["nombre", "email", "direccion", "consulta", "mensaje"]
        fields = '__all__'


class CustomUserCreationForm(UserCreationForm):
    pass


class PortafolioForm(forms.ModelForm):

    class Meta:
        model = Portafolio
        fields = '__all__'