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
    
]
