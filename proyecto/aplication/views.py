from pyexpat.errors import messages
from django.contrib import messages
from django.shortcuts import redirect, render, get_object_or_404
from django.http import HttpResponse
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required, permission_required
from aplication.models import Registro
from aplication.models import Portafolio


#from proyecto.aplication.models import Registro
from .forms import ContactoForm, CustomUserCreationForm, PortafolioForm

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
            

            return redirect(to="/")
        data["form"] = formulario1


    return render(request, 'registration/registro.html', data)

@login_required
def usuarios_list(request):
    usuarios = Registro.objects.all()
    contexto = {'usuarios': usuarios}
    return render(request, 'aplication/tablausers.html', contexto)


def portafolio(request):
    portafolio = Portafolio.objects.all()
    data = { 'portafolio' : portafolio  }
    return render(request, 'aplication/portafolio.html', data)

@permission_required('aplication.add_portafolio')
def agregar(request):

    data = {
        'form' : PortafolioForm()
    }

    if request.method == 'POST' :
        formulario2 = PortafolioForm(data=request.POST, files=request.FILES)

        if formulario2.is_valid():
            formulario2.save()
            return redirect(to="lista" )
        else:
            data['form'] = formulario2


    return render(request, 'crud/agregar.html', data)

@permission_required('aplication.view_portafolio')
def lista(request):
    lista = Portafolio.objects.all()

    data = { 'lista' : lista }

    return render(request, 'crud/listas.html', data)

@permission_required('aplication.change_portafolio')
def modificar(request, id):

    modificar = get_object_or_404(Portafolio, id=id)

    data = {
        'form' : PortafolioForm(instance=modificar)
    }

    if request.method == 'POST' :
        formulario3 = PortafolioForm(data=request.POST, instance=modificar, files=request.FILES)

        if formulario3.is_valid():
            formulario3.save()
           
            return redirect(to="lista" )
        
        data['form'] = formulario3

    return render(request, 'crud/modificar.html', data)

@permission_required('aplication.delete_portafolio')
def eliminar(request, id):

    eliminar = get_object_or_404(Portafolio, id=id)
    eliminar.delete()

    

    return redirect(to="lista")
        
        







