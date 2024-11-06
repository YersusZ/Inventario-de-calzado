from django.urls import path
from . import views
from django.conf import settings
from django.contrib.staticfiles.urls import static
from django.contrib.auth import views as auth_views
from django.contrib.auth.decorators import login_required


urlpatterns = [
    path('', auth_views.LoginView.as_view(), name='login'),
    path('Inventario', login_required(views.Inventario), name='Inventario'),
    path('Inventario/Crear', login_required(views.Crear_tenis), name='Inventario/Crear'),
    path('Inventario/Editar', login_required(views.Editar_tenis), name='Inventario/Editar'),
    path('Eliminar/<int:id>', login_required(views.Eliminar_tenis), name='Eliminar'),
    path('Inventario/Editar/<int:id>', login_required(views.Editar_tenis), name='Inventario/Editar'),
    path('Historial', login_required(views.MostrarHistorial), name='Historial'),
    path('Cuentas', login_required(views.Cuentas), name='Cuentas'),
    path('Crear_Cuenta', login_required(views.CrearCuenta), name='Crear_Cuenta'),
    path('Inventario/Consultar/<int:id>', login_required(views.Consultar), name='Inventario/Consultar'),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)