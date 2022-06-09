from django.contrib import admin

# Register your models here.

from.models import Contacto, Registro, Suscriptores, Proyectos, Portafolio

admin.site.register(Registro)
admin.site.register(Contacto)
admin.site.register(Suscriptores)
admin.site.register(Proyectos)
admin.site.register(Portafolio)