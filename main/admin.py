from django.contrib import admin
from .models import *
from django.contrib.auth.models import Group
# Register your models here.
@admin.register(User)
class User(admin.ModelAdmin):
    list_display = ['username','is_seller','is_customer','is_active','is_staff','is_superuser']


admin.site.register(Seller)
admin.site.register(Customer)
admin.site.register(MedicineCompany)
admin.site.register(Medicine)
admin.site.register(Order)
admin.site.register(OrderItem)
admin.site.register(saveSeller)