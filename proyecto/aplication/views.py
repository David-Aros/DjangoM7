from pyexpat.errors import messages
from django.contrib import messages
from django.shortcuts import redirect, render
from django.http import HttpResponse
from django.contrib.auth import authenticate, login
from aplication.models import Registro

#from proyecto.aplication.models import Registro
from .forms import ContactoForm, CustomUserCreationForm

# Create your views here.
def index(request):
    return render(request, 'aplication/index.html')

def formulario(request):
    data = {
        'form': ContactoForm()
    }

    if request.method == 'POST':
        formular = ContactoForm(data=request.POST)
        if formular.is_valid():
            formular.save()
            data["mensaje"] = "Contacto Guardado"
        else:
            data["form"] = formular

    return render(request, 'aplication/formulario.html', data)

def registro1(request):
    data = {
      'form' : CustomUserCreationForm()  
    }

    if request.method == 'POST' :
        formulario1 = CustomUserCreationForm(data=request.POST)
        if formulario1.is_valid():
            formulario1.save()
            user = authenticate(username=formulario1.cleaned_data["username"], 
            password=formulario1.cleaned_data["password1"])
            login(request, user)
            messages.success(request,"Registrado Correctamente")

            return redirect(to="/")
        data["form"] = formulario1


    return render(request, 'registration/registro.html', data)


def usuarios_list(request):
    usuarios = Registro.objects.all()
    contexto = {'usuarios': usuarios}
    return render(request, 'aplication/tablausers.html', contexto)







