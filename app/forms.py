
from django import forms










class IdsiForm(forms.Form):
    classe=forms.CharField(max_length=50)
    motif=forms.CharField(max_length=50)
    matiere=forms.CharField(max_length=50)
    intervenant=forms.CharField(max_length=50)
    datedebut=forms.DateTimeField(widget=forms.DateInput(
       format ='%Y-%m-%dT%H:%M', 
       attrs={'type':'datetime-local', }),
       input_formats=('%Y-%m-%dT%H:%M')
                              
    )
    
    datefin=forms.DateTimeField(widget=forms.DateInput(
       format ='%Y-%m-%dT%H:%M', 
       attrs={'type':'datetime-local', }),
       input_formats=('%Y-%m-%dT%H:%M')
                              
    )
    
    