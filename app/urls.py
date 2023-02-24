
from django.urls import path,include
from app import views




urlpatterns = [
 
   path('',views.connexion , name="connexion"),
   path('perform_login',views.perform_login , name="perform_login"),
   path('dashboard',views.dashboard , name="dashboard"),
   path('idsi',views.idsi, name="idsi"),
   path('autre',views.autre, name="autre"),
   path('encours',views.encours, name="encours"),
   path('historique',views.historique, name="historique"),
   path('supprimerreservation/<str:pk>/',views.supprimerreservation, name="supprimereservation"),
   
   
   
    
]