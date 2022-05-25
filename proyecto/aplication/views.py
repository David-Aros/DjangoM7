from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request):
    return render(request, 'aplication/index.html')

#def css(request):
#    return render(request, 'aplication/static/css/footer.css')

#def css(request):
#    return render(request, 'aplication/static/css/style.css')

def formulario(request):
    return render(request, 'aplication/formulario.html')