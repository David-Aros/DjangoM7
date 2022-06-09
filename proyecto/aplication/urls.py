from django.urls import path
from django.contrib.auth import views as auth_views
from . import views


urlpatterns = [
    path('', views.index, name='index'),

    #url de acceso
    #path('login/', auth_views.LoginView.as_view(template_name='aplication/login.html'), name='login' ),

    #urls generales

    path('formulario/', views.formulario, name='formulario'),
    path('registro/', views.registro1, name='registro1'),
    path('usuarios', views.usuarios_list, name='usuarios'),
    path('portafolio', views.portafolio, name='portafolio'),
    path('agregar', views.agregar, name='agregar'),
    path('lista', views.lista, name='lista'),
    path('modificar/<id>', views.modificar, name='modificar'),
    path('eliminar/<id>', views.eliminar, name='eliminar'),
    
]
