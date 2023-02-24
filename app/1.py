class Utilisateur(models.Model):
    
    nomUt = models.CharField( max_length=50)
    effetifUt = models.IntegerField(null=True) 
    
    def __str__(self):
        return self.nomUt
    
    
  

class Activite(models.Model):
   
    nomAt = models.CharField( max_length=50)
    intervenantAt = models.CharField( max_length=50)
    salle=models.ManyToManyField(Salle,null=True,through='Occupe')
    utilisateur =models.ManyToManyField(Utilisateur,null=True,through='Occupe')
    matiere=models.ForeignKey(Matiere,on_delete=models.CASCADE,blank=True,null=True)
    def __str__(self):
        return self.nomAt
    
    
    
class Occupe(models.Model):
    salle=models.ForeignKey(Salle,  on_delete=models.CASCADE,blank=True,null=True)
    utilisateur=models.ForeignKey(Utilisateur,  on_delete=models.CASCADE,blank=True,null=True)
    activite=models.ForeignKey(Activite,  on_delete=models.CASCADE,blank=True,null=True)
    debut=models.DateTimeField()
    fin=models.DateTimeField()
    