from contextlib import _RedirectStream
import re
from datetime import datetime,timedelta
import calendar
from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
from django.template import loader
from django.urls import reverse
from django.contrib import messages
from django.utils import timezone
import pandas as pd
from plotly.offline import plot 
import plotly.express as px
import plotly.graph_objects as go
from collections import Counter





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
    
    #caluler le nombre total d'utilisation de salles 
    sgci=Occupe.objects.filter(salle_id=1).count()
    multimedia=Occupe.objects.filter(salle_id=2).count()
    salle_374=Occupe.objects.filter(salle_id=3).count()
    salle_375=Occupe.objects.filter(salle_id=4).count()
    
    liste_salle=[('sgci',sgci),('multimedia',multimedia),('salle 374',salle_374),('salle 375',salle_375)]
    liste_salle=sorted(liste_salle, key= lambda x:x[1],reverse=True)
    
   
    ###############
    
    
    
    
    
    
    
    ## bar vertical pour l'occupation des salles mois
   
  
    today = datetime.now()
    week_start = today - timedelta(days=today.weekday())
    week_end = week_start + timedelta(days=6)
   
    
   
    bardatasgci = Occupe.objects.filter(debut__gte=week_start,fin__lte=week_end ,salle_id=1).count()
    bardatamulti = Occupe.objects.filter(debut__gte=week_start,fin__lte=week_end ,salle_id=2).count()
    bardatas374 = Occupe.objects.filter(debut__gte=week_start,fin__lte=week_end ,salle_id=3).count()
    bardata375 = Occupe.objects.filter(debut__gte=week_start,fin__lte=week_end ,salle_id=4).count()
   
    
    figsemaine= go.Figure(
    data=[go.Bar(x=['sgci','multimedia','salle 374','Salle 375'],  y=[bardatasgci, bardatamulti, bardatas374,bardata375 ])])
    figsemaine.update_layout(
       
        xaxis=dict(
        title=dict(font=dict(size=22)),
        tickfont=dict(size=16)),
      yaxis=dict(
        title="Nombre d'occupations",
         titlefont=dict(size=17),
        tickfont=dict(size=14)
    ),
    title=dict(text="Occupations des salles par semaine", x=0.5, y=0.01, xanchor="center", yanchor="bottom"),
                  )
    
    semaine_bar=plot(figsemaine,output_type='div')
    ####
    
    
    
    ######## bar vertical pour l'occupation des salles par mois
    
    today = datetime.now()
    month_start = today.replace(day=1)
    month_end = (month_start.replace(month=month_start.month+1, day=1) - timedelta(days=1))
    
    
    moisdatasgci = Occupe.objects.filter(debut__gte=month_start,fin__lte=month_end ,salle_id=1).count()
    moisdatamulti = Occupe.objects.filter(debut__gte=month_start,fin__lte=month_end ,salle_id=2).count()
    moisdatas374 = Occupe.objects.filter(debut__gte=month_start,fin__lte=month_end ,salle_id=3).count()
    moisdata375 = Occupe.objects.filter(debut__gte=month_start,fin__lte=month_end ,salle_id=4).count()
    
    
    figmois= go.Figure(
    data=[go.Bar(x=['sgci','multimedia','salle 374','Salle 375'],  y=[moisdatasgci, moisdatamulti, moisdatas374,moisdata375 ])])
    figmois.update_layout(
        xaxis=dict(
        title=dict(font=dict(size=22)),
        tickfont=dict(size=16)),
      yaxis=dict(
        title="Nombre d'occupations",
         titlefont=dict(size=16),
        tickfont=dict(size=14)
    ),
    title=dict(text="Occupations des salles par mois", x=0.5, y=0.01, xanchor="center", yanchor="bottom"),
                  )
    mois_bar=plot(figmois,output_type='div')
    
    
    
    
    #diagramme circulaire pour salle sgci
    circulairesgci=Occupe.objects.filter(salle_id=1)
    labelscirculairesgci = [d.activite.nomAt for d in circulairesgci]
    
    namelabesetsgci=set([d.activite.nomAt for d in circulairesgci])
    namelabesetsgci=list( namelabesetsgci)
    
    
    countlabelscirculairesgci = Counter(labelscirculairesgci)
    
   
    
    totalsgci = sum(countlabelscirculairesgci.values())

    valuesgci = []
    labelsgci = []
    for key, value in  countlabelscirculairesgci.items():
        proportion = value / totalsgci
        valuesgci.append(proportion)
        labelsgci.append(key)

   
    figcirculairesgci = px.pie(values=valuesgci, labels=labelsgci,names= namelabesetsgci)
    figcirculairesgci.update_layout(
        font=dict(color="Black", size=20),
    title={
        'text': "Répartion des activités",
        'font': {
            'size': 18
        },
        
        'x': 0.45,
        'xanchor': 'center',
        'y': 0.09
    })
    figcirculairesgci.update_traces(textinfo="percent", textfont=dict(color="white"))

  
    circu_sgci = figcirculairesgci.to_html(full_html=False)
   
    
    
    ### diagramme circulaire de multimedia
    circulairemulti=Occupe.objects.filter(salle_id=2)
    labelscirculairemulti = [d.activite.nomAt for d in circulairemulti]
    countlabelscirculairemulti = Counter(labelscirculairemulti)
    namelabesetmulti=set([d.activite.nomAt for d in circulairemulti])
    namelabesetmulti=list( namelabesetmulti)
    
    
    totalmulti = sum(countlabelscirculairemulti.values())

    valuemulti = []
    labelmulti = []
    for key, value in  countlabelscirculairemulti.items():
        proportion = value / totalmulti
        valuemulti.append(proportion)
        labelmulti.append(key)
    
    
    figcirculairemulti = px.pie(values=valuemulti, labels=labelmulti,names= namelabesetmulti)
    figcirculairemulti.update_layout(
         font=dict(color="Black", size=20),
    title={
        'text': "Répartion des activités",
        'font': {
            'size': 18
        },
        
        'x': 0.45,
        'xanchor': 'center',
        'y': 0.09
    })
    figcirculairemulti.update_traces(textinfo="percent", textfont=dict(color="white"))

  
    circu_multi = figcirculairemulti.to_html(full_html=False)
    
    
    
    
    
    ### diagramme circulaire de salle 374
    circulaire374=Occupe.objects.filter(salle_id=3)
    labelscirculaire374 = [d.activite.nomAt for d in circulaire374]
    countlabelscirculaire374 = Counter(labelscirculaire374)
    namelabeset374=set([d.activite.nomAt for d in circulaire374])
    namelabeset374=list( namelabeset374)
    
    
    total374 = sum(countlabelscirculaire374.values())

    value374 = []
    label374 = []
    for key, value in  countlabelscirculaire374.items():
        proportion = value / total374
        value374.append(proportion)
        label374.append(key)
    
    
    figcirculaire374 = px.pie(values=value374, labels=label374,names= namelabeset374)
    figcirculaire374.update_layout(
         font=dict(color="Black", size=20),
    title={
        'text': "Répartion des activités",
        'font': {
            'size': 18
        },
        
        'x': 0.45,
        'xanchor': 'center',
        'y': 0.09
    })
    figcirculaire374.update_traces(textinfo="percent", textfont=dict(color="white"))

  
    circu_374 = figcirculaire374.to_html(full_html=False)
    
    
    
    
    
    ### diagramme circulaire de salle 375
    circulaire375=Occupe.objects.filter(salle_id=4)
    labelscirculaire375 = [d.activite.nomAt for d in circulaire375]
    countlabelscirculaire375 = Counter(labelscirculaire375)
    namelabeset375=set([d.activite.nomAt for d in circulaire375])
    namelabeset375=list( namelabeset375)
    
    
    total375 = sum(countlabelscirculaire375.values())

    value375 = []
    label375 = []
    for key, value in  countlabelscirculaire375.items():
        proportion = value / total375
        value375.append(proportion)
        label375.append(key)
    
    
    figcirculaire375 = px.pie(values=value375, labels=label375,names= namelabeset375)
    figcirculaire375.update_layout(
         font=dict(color="Black", size=20),
    title={
        'text': "Répartion des activités",
        'font': {
            'size': 18
        },
        
        'x': 0.45,
        'xanchor': 'center',
        'y': 0.09
    })
    figcirculaire375.update_traces(textinfo="percent", textfont=dict(color="white"))
    

  
    circu_375 = figcirculaire375.to_html(full_html=False)
    
    
    #faire px.line pour les dates d'utlisations
    dateutilisation=Occupe.objects.all()
    dateutilisation1 = [d.debut for d in dateutilisation]
    countdate= Counter(dateutilisation1)
   
    xdatevalue=countdate.values()
    
    #countdate=countdate.values(())
    namedate=set(dateutilisation1)
    namedate=list(namedate)
   
    
    
        
    figdate=px.histogram(x=namedate,y=xdatevalue,nbins=9)
    figdate.update_layout(xaxis_title="Date", yaxis_title=" Nombre de réservations",
                         
                  font=dict(size=20)),
    date_bar=plot(figdate,output_type='div')
    
    
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
   
    
    
    context={'salle':liste_salle,'semaine_plot':semaine_bar,'mois_plot':mois_bar,'cirulaire_sgci':circu_sgci,'circulaire_multi':circu_multi,'circulaire_374':circu_374,'circulaire_375':circu_375,'line_chart':date_bar}
    
    return render(request, "app/dashboard.html",context)




def idsi(request):
   
    sal=Salle.objects.all()
    mat=Matiere.objects.all()
    today = timezone.now()
    motif_error=""
    matiere_error=""
    intervenant_error=""
    datedebut_error=""
    datefin_error=""
    date_error=""
    dejareservere=""
    
    
    
    
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
            intervenant=None
            
            
         
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
        
        
        if datedebut>=datefin:
            date_error="La date de début ne peut être supérieure ou égale à la date de fin "
         
       
            
         
        
             
        
        if not datefin_error and not datedebut_error and not motif_error and not matiere_error and not intervenant_error and not date_error:
            matierelie = Matiere.objects.get(nomMt=matiere)
            
            
            sallelie=Salle.objects.get(nomSl=salle)
            verif=Occupe.objects.filter(debut=datedebut,fin=datefin,salle=sallelie)
            
            if verif:
                dejareservere='cette salle est déja prise à cette période '
                
            else:
                
                
                
                
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
               
        
        
        
        
        
        
        
        
        
        
        
       
        
        
        
    
    
    context={'mat':mat, 'sal':sal,'motif_error': motif_error,'matiere_error': matiere_error,'intervenant_error': intervenant_error,'datefin_error':datefin_error,'datedebut_error':datedebut_error,'date_error':date_error,'prise':dejareservere}
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
            
        if datedebut>=datefin:
            date_error="La date de début ne peut être ou égale supérieure à la date de fin "
             
            
        
        
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
          
        
        
        
        
        
        
        
    
    
    
    
    
    
    
    
    
    
   
    context={'sal':sal,"entier_error":entier_error,"string_error":string_error,"motif_error":motif_error,"nomintervenant_error":nomintervenant_error,"preintervenant_error":preintervenant_error,'datedebut_error':datedebut_error,'datefin_error':datefin_error,'date_error':date_error}
    return render(request, "app/autre.html",context)








def encours(request):
    today = timezone.now()
    occupe=Occupe.objects.filter(fin__gte=today)
   
    #events = Event.objects.filter(start_date_lte=today, end_date_gte=today)
    print(today)
    
    
    
    
    
    sal=Salle.objects.all()
    utilisateur=Utilisateur.objects.all()
    activite=Activite.objects.all()
    matiere=Matiere.objects.all()
    
     
 
    
    
    
    
    
    
    context={'occupe':occupe,'sal':sal,'utilisateur':utilisateur,'activite':activite,'mat':matiere}
    return render(request, "app/encours.html",context)
            

def supprimerreservation(request,pk):
    supmessage=""
    obj=Occupe.objects.get(id=pk)
    if request.method=='GET':
        obj.delete()
        supmessage="Supprimé avec succès"
        
    return HttpResponseRedirect(reverse("encours"))
        
        
        
        
        
        

def historique(request):
    today = timezone.now()
    occupe=Occupe.objects.filter(debut__lt=today,fin__lt=today)
    occupe1=Occupe.objects.filter(fin__gte=today)
   
    #events = Event.objects.filter(start_date_lte=today, end_date_gte=today)
   
    
    
    
    
    
    sal=Salle.objects.all()
    utilisateur=Utilisateur.objects.all()
    activite=Activite.objects.all()
    matiere=Matiere.objects.all()
    
    
     
 
    
    
    
    
    
    
    context={'occupe':occupe,'sal':sal,'utilisateur':utilisateur,'activite':activite,'mat':matiere,'encours':occupe1}
    return render(request, "app/historique.html",context)
            