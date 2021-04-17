from django.urls import path
from . import views
urlpatterns = [
    path('',views.home, name='home'),
    path('login/', views.mylogin, name="mylogin"),
    path('registration/', views.myregistration, name="myregistration"),
    path('logout/', views.mylogout, name="mylogout")
]