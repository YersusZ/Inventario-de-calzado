from django import forms
from .models import tenis
from .models import historial
from .models import cantidadtallas

class TenisForm(forms.ModelForm):
    class Meta:
        model = tenis
        fields = '__all__'

class HistorialForm(forms.ModelForm):
    class Meta:
        model = historial
        fields = '__all__'
        
class CantidadTallasForm(forms.ModelForm):
    class Meta:
        model = cantidadtallas
        fields = 'Talla36', 'Talla37', 'Talla38', 'Talla39', 'Talla40', 'Talla41', 'Talla42', 'Talla43', 'Talla44'
        
    def __init__(self, *args, **kwargs):
        super(CantidadTallasForm, self).__init__(*args, **kwargs)
        for field_name in self.fields:
            self.fields[field_name].required = False