from django.db import models
from django.contrib.admin.models import LogEntry
from django.contrib.auth.models import User
from django.db.models import Sum
# Create your models here.
class tenis (models.Model):
    Imagen = models.ImageField(upload_to='imagenes/', verbose_name= "Imagen") 
    ID = models.AutoField(primary_key=True, verbose_name= "ID")
    Marca = models.CharField(max_length=50, verbose_name= "Marca")
    Estilo = models.CharField(max_length=50, verbose_name= "Estilo")
    Color = models.CharField(max_length=100, verbose_name= "Color")
    Precio_unitario = models.FloatField()
    
    @property
    def Cantidad_tallas(self):
        suma_cantidades = cantidadtallas.objects.filter(Tenis_ID=self.pk).aggregate(
            total=Sum('Talla36') + Sum('Talla37') + Sum('Talla38') + Sum('Talla39') +
                  Sum('Talla40') + Sum('Talla41') + Sum('Talla42') + Sum('Talla43') + Sum('Talla44')
        )
        return suma_cantidades['total'] or 0
    
    class Meta:
        constraints = [
            models.CheckConstraint(
                check=models.Q(Precio_unitario__gte=0),
                name='%(app_label)s_%(class)s_campo2_positive_check',
            ),
        ]
        
    def __str__(self):
        fila = "ID:" + str(self.ID) + " - " + "Marca:" + self.Marca + " - " + "Estilo:"  + self.Estilo + " - " + "Color:" + self.Color
        return fila
    
    def delete(self, using=None, keep_parents=False):
        self.Imagen.storage.delete(self.Imagen.name)
        super().delete()
    
    
class historial (models.Model):
    ID = models.AutoField(primary_key=True, verbose_name= "ID")
    Tenis_ID = models.IntegerField(null = True)
    Fecha = models.DateTimeField(auto_now_add=True, verbose_name= "Fecha")
    Usuario_ID = models.IntegerField(null = True)
    Accion = models.CharField(max_length=20, verbose_name= "Accion")
    
    def __str__(self):
        fila = "ID:" + str(self.ID) + " - " + "Fecha:" + str(self.Fecha) + " - " + "Usuario:" + self.Usuario.username + " - " + "Accion:" + self.Accion
        return fila

class cantidadtallas(models.Model):
    Tenis_ID = models.OneToOneField(tenis, on_delete=models.CASCADE)
    Talla36 = models.IntegerField(default=0, verbose_name= "Talla 36")
    Talla37 = models.IntegerField(default=0, verbose_name= "Talla 37")
    Talla38 = models.IntegerField(default=0, verbose_name= "Talla 38")
    Talla39 = models.IntegerField(default=0, verbose_name= "Talla 39")
    Talla40 = models.IntegerField(default=0, verbose_name= "Talla 40")
    Talla41 = models.IntegerField(default=0, verbose_name= "Talla 41")
    Talla42 = models.IntegerField(default=0, verbose_name= "Talla 42")
    Talla43 = models.IntegerField(default=0, verbose_name= "Talla 43")  
    Talla44 = models.IntegerField(default=0, verbose_name= "Talla 44")
    
    class Meta:
        constraints = [
        models.CheckConstraint(
            check=models.Q(Talla36__gte=0),
            name='%(app_label)s_%(class)s_campo1_positive_check',
        ),
        models.CheckConstraint(
            check=models.Q(Talla37__gte=0),
            name='%(app_label)s_%(class)s_campo2_positive_check',
        ),
        models.CheckConstraint(
            check=models.Q(Talla38__gte=0),
            name='%(app_label)s_%(class)s_campo3_positive_check',
        ),
        models.CheckConstraint(
            check=models.Q(Talla39__gte=0),
            name='%(app_label)s_%(class)s_campo4_positive_check',
        ),
        models.CheckConstraint(
            check=models.Q(Talla40__gte=0),
            name='%(app_label)s_%(class)s_campo5_positive_check',
        ),
        models.CheckConstraint(
            check=models.Q(Talla41__gte=0),
            name='%(app_label)s_%(class)s_campo6_positive_check',
        ),
        models.CheckConstraint(
            check=models.Q(Talla42__gte=0),
            name='%(app_label)s_%(class)s_campo7_positive_check',
        ),
        models.CheckConstraint(
            check=models.Q(Talla43__gte=0),
            name='%(app_label)s_%(class)s_campo8_positive_check',
        ),
        models.CheckConstraint(
            check=models.Q(Talla44__gte=0),
            name='%(app_label)s_%(class)s_campo9_positive_check',
        ),
    ]