from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from .models import tenis
from .models import historial
from .models import cantidadtallas
from .forms import TenisForm
from .forms import HistorialForm
from .forms import CantidadTallasForm
from django.db.models import Max
from django.contrib.auth.decorators import user_passes_test
from django.shortcuts import render
from django.contrib.auth import logout
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


# Create your views here.
def es_admin(user):
    return user.is_superuser

@login_required
def Inventario(request):
    Tenis = tenis.objects.all()
    for teni in Tenis:
        teni.Cantidad = teni.Cantidad_tallas
    return render(request, 'Inventario/index.html', {'Tenis': Tenis})

@login_required
def Crear_tenis(request):
    formulario = TenisForm(request.POST or None, request.FILES or None)
    formulario_tallas = CantidadTallasForm(request.POST or None, request.FILES or None)
    Usuario = User.objects.get(username = request.user.username)
    if request.method == 'POST':
        if formulario.is_valid() and formulario_tallas.is_valid():
            Tallas =formulario.save()
            idmax = tenis.objects.aggregate(max_id=Max('ID'))['max_id']
            Tenis = tenis.objects.get(ID=idmax)
            formulario_tallas.instance.Tenis_ID = Tallas
            formulario_tallas.save()
            historial.objects.create(Tenis_ID = Tenis.ID, Usuario_ID = Usuario.id, Accion = 'Crear')
            return redirect('Inventario')
        return render(request, 'Inventario/Crear.html', {'formulario': formulario, 'formulario_tallas': formulario_tallas, 'error' : 'Error en los datos ingresados'})
    else:
        return render(request, 'Inventario/Crear.html', {'formulario': formulario, 'formulario_tallas': formulario_tallas})
    
@login_required
@user_passes_test(es_admin)
def Editar_tenis(request, id):
    Tenis = tenis.objects.get(ID=id)
    Tallas = cantidadtallas.objects.get(Tenis_ID=Tenis)
    Usuario = User.objects.get(username=request.user.username)
    formulario = TenisForm(request.POST or None, request.FILES or None, instance=Tenis)
    formulario_tallas = CantidadTallasForm(request.POST or None, instance=Tallas)
    if request.method == 'POST':
        if formulario.is_valid() and formulario_tallas.is_valid() and request.POST:
            formulario.save()
            formulario_tallas.save()
            historial.objects.create(Tenis_ID=Tenis.ID, Usuario_ID=Usuario.id, Accion='Editar')
            return redirect('Inventario')
        return render(request, 'Inventario/Editar.html', {'formulario': formulario, 'formulario_tallas': formulario_tallas, 'error': 'Error en los datos ingresados'})
    else:
        return render(request, 'Inventario/Editar.html', {'formulario': formulario, 'formulario_tallas': formulario_tallas})

@login_required
@user_passes_test(es_admin)
def Eliminar_tenis(request, id):
    Tenis = tenis.objects.get(ID=id)
    Usuario = User.objects.get(username = request.user.username)
    historial.objects.create(Tenis_ID = Tenis.ID,  Usuario_ID = Usuario.id, Accion = 'Eliminar')
    Tenis.delete()
    return redirect('Inventario')

@login_required
@user_passes_test(es_admin)
def MostrarHistorial(request):
    Historial = historial.objects.all()
    return render(request, 'Inventario/Historial.html', {'Historial': Historial})

@login_required
def signout(request):
    logout(request)
    return redirect('login')

@login_required
@user_passes_test(es_admin)
def CrearCuenta(request):
    if request.method == 'GET':
        return render(request, 'signup.html',{'form': UserCreationForm()})
    else:
        if request.POST['password1'] == request.POST['password2']:
            try:
                Usuario = User.objects.create_user(username = request.POST['username'], password = request.POST['password1'])
                Usuario.save()
                return redirect('Cuentas')
            except:
                return render(request, 'signup.html',{'form': UserCreationForm, 'error': 'El usuario ya existe'})
        return render(request, 'signup.html',{'form': UserCreationForm, 'error': 'Las contraseñas no coinciden'})
            

@login_required
@user_passes_test(es_admin)
def Cuentas(request):
    Usuarios = User.objects.all()
    return render(request, 'Inventario/Cuentas.html', {'Usuarios': Usuarios})

@login_required
def Consultar(request, id):
    Tenis = tenis.objects.get(ID=id)
    Tallas = cantidadtallas.objects.get(Tenis_ID=Tenis)
    return render(request, 'Inventario/Consultar.html', {'Tenis': Tenis, 'Tallas': Tallas})