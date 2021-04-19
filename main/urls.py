from main.models import saveSeller
from django.urls import path
from django.conf.urls import url
from . import views
urlpatterns = [
    path('',views.home, name='home'),
    path('login/', views.mylogin, name="mylogin"),
    path('registration/', views.myregistration, name="myregistration"),
    path('logout/', views.mylogout, name="mylogout"),
    path('sellers/', views.sellerRegistration, name="sellerRegistration"),
    path('medicine/', views.medicine, name="medicine"),
    url(r'^edit_company/(?P<id>.*)/$', views.edit_medicine_company, name="edit_medicine_company"),
    url(r'^delete_company/(?P<id>.*)/$', views.delete_medicine_company, name="delete_medicine_company"),
    url(r'^delete_medicine/(?P<id>.*)/$', views.delete_medicine, name="delete_medicine"),
    url(r'^edit_medicine/(?P<id>.*)/$', views.edit_medicine, name="edit_medicine"),
]
