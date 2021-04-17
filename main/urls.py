from main.models import saveSeller
from django.urls import path
from . import views
urlpatterns = [
    path('',views.home, name='home'),
    path('login/', views.mylogin, name="mylogin"),
    path('registration/', views.myregistration, name="myregistration"),
    path('logout/', views.mylogout, name="mylogout"),
    path('sellers/', views.sellerRegistration, name="sellerRegistration"),
    path('medicine/', views.medicine, name="medicine"),
]