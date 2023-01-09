import re
from datetime import datetime
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.template import loader
from django.urls import reverse
from django.contrib import messages



from django.contrib.auth import authenticate,login,logout
from app.forms import IdsiForm

from app.models import Matiere, Salle,Utilisateur,Activite,Occupe

# Create your views here.


def connexion(request):
   
    return render(request, 'app/login.html')

def perform_login(request):
    if request.method !="POST":
        return HttpResponse("Method not allowed")
    else:
        username=request.POST.get("username")
        password=request.POST.get("password")
        user_obj=authenticate(request,username=username,password=password)
        if user_obj is not None:
            login(request,user_obj)
            return HttpResponseRedirect(reverse("dashboard"))
        else:
            return HttpResponseRedirect("/")
  
  
  
  
        
def dashboard(request):
    return render(request, "app/dashboard.html")




def idsi(request):
   
    sal=Salle.objects.all()
    mat=Matiere.objects.all()
    motif_error=""
    matiere_error=""
    intervenant_error=""
    datedebut_error=""
    datefin_error=""
    date_error=""
    
    
    
    
    if request.POST:
                
        classe =request.POST.get('classe')
        salle =request.POST.get('salle')
        motif=request.POST.get('motif')
        matiere=request.POST.get('matiere')
        intervenant=request.POST.get('intervenant')
        datefin=request.POST.get('fin')
        datedebut=request.POST.get('debut')
        
        
        
        if motif=='motif':
            motif_error="veillez changer la valeur du champ motif"
        
        if matiere=='....':
            matiere_error="veillez changer la valeur du champ matiere"
        
        if intervenant=="intervenant":
            
            intervenant_error="veillez changer la valeur du champ intervenant"
         
        if datedebut=='':
            datedebut_error="veillez changer la valeur du champ date debut"
        elif datedebut !='':
            datedebut=datedebut.replace('T'," ")
            datedebut = datetime.strptime(datedebut, '%Y-%m-%d %H:%M')
            
        
        if datefin=='':
            datefin_error="veillez changer la valeur du champ date fin"
        elif datefin !='':
            datefin=datefin.replace('T'," ")
            datefin = datetime.strptime(datefin, '%Y-%m-%d %H:%M')
        
        
        if datedebut>datefin:
            date_error="La date de début ne peut être supérieure à la date de fin "
             
        
        if not datefin_error and not datedebut_error and not motif_error and not matiere_error and not intervenant_error and not date_error:
            matierelie = Matiere.objects.get(nomMt=matiere)
            print(matiere)
            
            activite=Activite(nomAt=motif,intervenantAt=intervenant)
            activite.save()
            activite.matiere=matierelie
            activite.save()
            
            utilisateur=Utilisateur(nomUt=classe)
            utilisateur.save()
            sallelie=Salle.objects.get(nomSl=salle)
            utilisateur.effetifUt=sallelie.capaciteSl
            utilisateur.save()
            
            
            occupe=Occupe(debut=datedebut,fin=datefin)
            occupe.save()
            occupe.activite=activite
            occupe.salle=sallelie
            occupe.utilisateur=utilisateur
            occupe.save()
            
            messages.success(request,'enregistré avec succès')
               
        
        
        
        
        
        
        
        
        
        
        
       
        
        
        
    
    
    context={'mat':mat, 'sal':sal,'motif_error': motif_error,'matiere_error': matiere_error,'intervenant_error': intervenant_error,'datefin_error':datefin_error,'datedebut_error':datedebut_error,'date_error':date_error}
    return render(request, "app/idsi.html",context)

















def autre(request):
    sal=Salle.objects.all()
    
    
    
    entier_error=""
    string_error=""
    motif_error=""
    nomintervenant_error=""
    preintervenant_error=""
    intervenant=""
    datefin_error=""
    datedebut_error=""
    date_error=""
    
    
    
    if request.POST:
        entite =(request.POST.get('entite')).lower()
        motif =(request.POST.get('motif')).lower()
        salle =request.POST.get('salle')
        datefin =request.POST.get('fin')
        datedebut =request.POST.get('debut')
        
        try:
            effectif =int(request.POST.get('effectif'))
        
        except ValueError:
            entier_error="Veillez entrez un entier!"

        effectif =request.POST.get('effectif')
        nomintervenant=(request.POST.get('nomintervenant')).lower()
        preintervenant=(request.POST.get('preintervenant')).lower()
        intervenant=nomintervenant+'_'+preintervenant
        
         
        if entite=="":
            string_error="Veillez entrez une valeur!"
        if motif=="":
            motif_error="Veillez entrez une valeur!"
        if effectif=="":
            entier_error="Veillez entrez une valeur!"
        if nomintervenant=="":
            nomintervenant_error="Veillez entrez une valeur!"
        if preintervenant=="":
            preintervenant_error="Veillez entrez une valeur!"
        
        if re.findall("[@.,!?/*-^#]", entite) :
            string_error="Veillez entrez une bonne valeur"
        if re.findall("[@.,!?/*-^#]", motif) :
            motif_error="Veillez entrez une bonne valeur"
        if re.findall("[@.,!?/*-^#]", preintervenant) :
            preintervenant_error="Veillez entrez une bonne valeur"
        if re.findall("[@.,!?/*-^#]", nomintervenant) :
            nomintervenant_error="Veillez entrez une bonne valeur"
          
        if datedebut=='':
            datedebut_error="veillez changer la valeur du champ date debut"
        elif datedebut !='':
            datedebut=datedebut.replace('T'," ")
            datedebut = datetime.strptime(datedebut, '%Y-%m-%d %H:%M')
            
        
        if datefin=='':
            datefin_error="veillez changer la valeur du champ date fin"
        elif datefin !='':
            datefin=datefin.replace('T'," ")
            datefin = datetime.strptime(datefin, '%Y-%m-%d %H:%M')
            
        if datedebut>datefin:
            date_error="La date de début ne peut être supérieure à la date de fin "
             
            
        
        
        if not string_error and not entier_error and not nomintervenant_error and preintervenant and not date_error:
            activite=Activite(nomAt=motif,intervenantAt=intervenant)
            activite.save()
            utilisateur=Utilisateur(nomUt=entite,effetifUt=effectif)
            utilisateur.save()
        
        
            sallelie=Salle.objects.get(nomSl=salle)
        
        
            occupe=Occupe(debut=datedebut,fin=datefin)
            occupe.save()
            occupe.activite=activite
            occupe.salle=sallelie
            occupe.utilisateur=utilisateur
            occupe.save()
            messages.success(request,'enregistré avec succès')
          
        
        
        
        
        
        
        
    
    
    
    
    
    
    
    
    
    
    print(intervenant)
    context={'sal':sal,"entier_error":entier_error,"string_error":string_error,"motif_error":motif_error,"nomintervenant_error":nomintervenant_error,"preintervenant_error":preintervenant_error,'datedebut_error':datedebut_error,'datefin_error':datefin_error,'date_error':date_error}
    return render(request, "app/autre.html",context)



























































def encours(request):
    occupe=Occupe.objects.all()
    
    sal=Salle.objects.all()
    utilisateur=Utilisateur.objects.all()
    activite=Activite.objects.all()
    matiere=Matiere.objects.all()
     
    
    
    
    
    
    
    
    context={'occupe':occupe,'sal':sal,'utilisateur':utilisateur,'activite':activite,'matiere':matiere,}
    return render(request, "app/encours.html",context)
            

