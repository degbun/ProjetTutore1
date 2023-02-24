from django.contrib import admin

from app.models import Activite, Matiere, Occupe, Salle, Utilisateur 

# Register your models here.
admin.site.register(Utilisateur),
admin.site.register(Salle),
admin.site.register(Activite),
admin.site.register(Occupe),
admin.site.register(Matiere),

