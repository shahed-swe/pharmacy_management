from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class User(AbstractUser):
    is_seller = models.BooleanField(default=False)
    is_customer = models.BooleanField(default=False)

    def __str__(self):
        return self.first_name + ' ' + self.last_name

class Seller(models.Model):
    seller_id = models.CharField(max_length=120, blank=True, null=True, unique=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True, related_name="seller")
    user_address = models.TextField(max_length=200, blank=True, null=True)
    phone_no = models.CharField(max_length=120, blank=True, null=True)

    def __str__(self):
        return self.user.first_name + " " + self.user.last_name


class saveSeller(models.Model):
    seller_id = models.CharField(max_length=120, blank=True, null=True, unique=True)
    username = models.CharField(max_length=120, blank=True, null=True)
    first_name = models.CharField(max_length=120, blank=True, null=True)
    last_name= models.CharField(max_length=120, blank=True, null=True)
    email = models.CharField(max_length=120, blank=True, null=True)
    user_address = models.TextField(max_length=200, blank=True, null=True)
    phone_no = models.CharField(max_length=120, blank=True, null=True)
    password = models.CharField(max_length=120, blank=True, null=True)

    def __str__(self):
        return self.first_name + " " + self.last_name


class Customer(models.Model):
    customer_id = models.CharField(max_length=120, blank=True, null=True, unique=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True, related_name="customer")
    user_address = models.TextField(max_length=200, blank=True, null=True)
    phone_no = models.CharField(max_length=120, blank=True, null=True)

    def __str__(self):
        return self.user.first_name + " " + self.user.last_name

    
class MedicineCompany(models.Model):
    company_name = models.CharField(max_length=120, blank=True, null=True, unique=True)

    def __str__(self):
        return self.company_name + ' ' +str(self.pk)

class Medicine(models.Model):
    medicine_name = models.CharField(max_length=120, blank=True, null=True)
    company_name = models.ManyToManyField(MedicineCompany, related_name='company')
    price = models.IntegerField(default=0, null=True, blank=True)
    medicine_image = models.ImageField(upload_to='medicine_image/', blank=True, null=True)
    total_stock = models.CharField(max_length=120, blank=True, null=True)

    def __str__(self):
        return self.medicine_name + ' '+str(self.pk)


class Order(models.Model):
    medicine = models.ForeignKey(Medicine,on_delete=models.CASCADE, blank=True, null=True,related_name="medicine")
    quantity = models.IntegerField(default=0, null=True, blank=True)

    @property
    def total_price(self):
        total = self.medicine.price * self.quantity
        return total

    def __str__(self):
        return self.medicine.medicine_name

