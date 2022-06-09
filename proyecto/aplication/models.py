from distutils.command.upload import upload
from django.db import models

# Create your models here.

class Registro(models.Model):
    nombre = models.CharField(max_length=100)
    apellido = models.CharField(max_length=100)
    email = models.EmailField(null=True, blank=True)
    direccion = models.CharField(max_length=150, null=True, blank=True)
    
    def __str__(self):
        return self.nombre + " " + self.apellido + " " + self.email
    

opciones_consulta = [
    [0, "Consulta"],
    [1, "Cotizacion"],
    [2, "Sugerencia"],
    [3, "Felicitaciones"],
    [4, "Reclamo"]
]


class Contacto(models.Model):
    nombre = models.CharField(max_length=50)
    email = models.EmailField()
    direccion = models.CharField(max_length=100)
    consulta = models.IntegerField(choices=opciones_consulta)
    mensaje = models.TextField()

    def __str__(self):
        return self.nombre


class Suscriptores(models.Model):
    email = models.EmailField()

    def __str__(self):
        return self.email


class Proyectos(models.Model):
    nombre = models.CharField(max_length=50)

    def __str__(self):
        return self.nombre



class Portafolio(models.Model):
    tipo = models.ForeignKey(Proyectos, on_delete=models.PROTECT)
    nombre = models.CharField(max_length=50)
    descripcion = models.TextField()
    terminado = models.BooleanField()
    fecha_creacion = models.DateField()
    imagen = models.ImageField(upload_to="portafolio", null=True)

    def __str__(self):
        return self.nombre





