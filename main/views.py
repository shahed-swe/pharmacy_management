from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth import authenticate, login, logout
from django.db import IntegrityError
from .models import *
import json
# Create your views here.
def home(request):
    if not request.user.is_authenticated:
        return redirect('/login')
    if request.user.is_customer:
        customer = request.user.customer
        order,create = Order.objects.get_or_create(customer=customer, complete=False)
    return render(request, 'home.html', {"title":"Home","order":order})


def mylogin(request):
    if request.user.is_authenticated:
        return redirect('/')
    if request.method == "POST":
        username = request.POST.get('username')
        password = request.POST.get('password')
        if username != "" and password != "":
            user = authenticate(username=username, password=password)
            if user != None:
                login(request, user)
                return redirect('/')
    return render(request, 'login.html', {"title":"Login"})


def myregistration(request):
    if request.user.is_authenticated:
        return redirect('/')
    if request.method == "POST":
        register_as = request.POST.get("register")
        if register_as == "customer":
            user = User(
                username=request.POST.get('username'),
                first_name=request.POST.get('first-name'),
                last_name=request.POST.get('last-name'),
                email=request.POST.get('email'),
                is_customer=True,
                is_active=True
            )
            user.set_password(request.POST.get('password'))
            user.save()
            customer = Customer(
                customer_id = request.POST.get('userid'),
                user=user,
                user_address = request.POST.get('address'),
                phone_no = request.POST.get('phone-no')
            )
            customer.save()
        else:
            seller = saveSeller(
                seller_id = request.POST.get('userid'),
                username = request.POST.get('username'),
                first_name = request.POST.get('first-name'),
                last_name = request.POST.get('last-name'),
                email = request.POST.get('email'),
                user_address = request.POST.get('address'),
                phone_no = request.POST.get('phone-no'),
                password = request.POST.get('password')
            )
            seller.save()
    return render(request, 'registration.html', {"title":"Registration"})

def sellerRegistration(request):
    if not request.user.is_superuser and request.user.is_authenticated:
        return redirect('/')
    else:
        seller = saveSeller.objects.all()
        if request.method == "POST":
            id = request.POST.get('userid')
            saved_seller = saveSeller.objects.filter(pk=id)
            # print(saved_seller[0].username)
            # print(saved_seller[0].password)
            user = User(
                username = saved_seller[0].username,
                first_name = saved_seller[0].first_name,
                last_name = saved_seller[0].last_name,
                email = saved_seller[0].email,
                is_seller = True,
                is_active = True
            )
            user.set_password(saved_seller[0].password)
            user.save()
            seller_save = Seller(
                user=user,
                seller_id = saved_seller[0].seller_id,
                user_address = saved_seller[0].user_address,
                phone_no = saved_seller[0].phone_no,

            )
            seller_save.save()
            saved_seller.delete()
        context = {"title":"Accept Seller","seller":seller}
        return render(request, 'accept_seller.html',context)

def mylogout(request):
    logout(request)
    return redirect('/login')


def medicine(request):
    if request.user.is_authenticated:
        if request.user.is_seller:
            companies = MedicineCompany.objects.all()
            medicine = Medicine.objects.all()
            context = {"title":"Add Medicine", "companies":companies, "medicine":medicine}
            if request.method == "POST":
                value = request.POST.get('button-value')
                if value == "1":
                    com_name = request.POST.get('company_name')
                    if com_name != "":
                        MedicineCompany.objects.create(company_name=com_name)
                    else:
                        pass
                elif value == "2":
                    company = request.POST.getlist('company')
                    comp = [int(i) for i in company if i != None]
                    medicine_name = request.POST.get('medicine_name')
                    if medicine_name != "":
                        medicine = Medicine(
                            medicine_name = medicine_name,
                            price = request.POST.get('price'),
                            total_stock = request.POST.get('quantity')
                        )
                        medicine.save()
                        for i in comp:
                            medicine.company_name.add(i)
                    else:
                        pass
                else:
                    pass
                return redirect('/medicine')
            return render(request, 'add_medicine.html',context)
        elif request.user.is_customer:
            medicine = Medicine.objects.all()
            customer = request.user.customer
            order,create = Order.objects.get_or_create(customer=customer, complete=False)
            context = {"title":"Medicine Store","medicine":medicine,"order":order}
            if request.method == "POST":
                medicine_id = request.POST.get('id')
                quantity = request.POST.get('quantity')
                if int(quantity) < 1:
                    pass
                else:
                    medicine = Medicine.objects.get(id=medicine_id)
                    order, created = Order.objects.get_or_create(customer=request.user.customer,complete=False)
                    orderitem, created = OrderItem.objects.get_or_create(medicine = medicine,order = order, quantity = quantity )
            return render(request, 'medicine_store.html', context)
        elif request.user.is_superuser:
            return redirect('/')
        else:
            pass
    else:
        return redirect('/')

    
def edit_medicine_company(request, id):
    if request.user.is_authenticated and request.user.is_seller:
        company = MedicineCompany.objects.filter(pk=id)
        context = {"title":"Edit Medicine Company","comp":company[0].company_name}
        if request.method == "POST":
            name = request.POST.get('company_name')
            company.update(company_name=name)
            return redirect('/medicine')
        return render(request, 'edit_company.html', context)
    else:
        return redirect('/')


def delete_medicine_company(request, id):
    if request.user.is_authenticated and request.user.is_seller:
        company = MedicineCompany.objects.filter(pk=id)
        if request.method == "POST":
            value = request.POST.get('button-value')
            if value == "Yes":
                # print("Deleted")
                company.delete()
            return redirect('/medicine')
        return render(request, 'delete_company.html')

def edit_medicine(request, id):
    if request.user.is_authenticated and request.user.is_seller:
        medicine = Medicine.objects.filter(pk=id)
        context = {"title":"Edit Medicine Credentials", "medicine":medicine}
        if request.method == "POST":
            price = request.POST.get('price')
            stock = request.POST.get('stock')
            if price != "" and stock != "":
                Medicine.objects.filter(pk=id).update(price=price, total_stock=stock)
            else:
                pass
            return redirect('/medicine') 
        return render(request, 'edit_medicine.html',context)
    else:
        return redirect('/')


def delete_medicine(request, id):
    if request.user.is_authenticated and request.user.is_seller:
        medicine = Medicine.objects.filter(pk=id)
        if request.method == "POST":
            value = request.POST.get('button-value')
            if value == "Yes":
                # print("Deleted")
                medicine.delete()
            return redirect('/medicine')
        return render(request, 'delete_medicine.html')


def cart(request):
    if request.user.is_authenticated and request.user.is_customer:
        customer = request.user.customer
        order, create = Order.objects.get_or_create(customer=customer, complete=False)
        items = order.orderitem_set.all()
        context = {"title":"Cart Items","items":items, "order":order}
        if request.method == "POST":
            value = request.POST.get('button-value')
            order = OrderItem.objects.filter(id=value)
            order.delete()
            return redirect('/cart')
        return render(request, 'cart.html', context)
    else:
        return redirect('/')

def checkout(request):
    if request.user.is_authenticated and request.user.is_customer:
        customer = request.user.customer
        order = Order.objects.get(customer=customer)
        items = order.orderitem_set.all()
        if len(OrderItem.objects.all()) == 0:
            return redirect('/medicine')
        new_list = []
        new_dict = {}
        if request.method == "POST":
            for i in items:
                medicine = Medicine.objects.filter(medicine_name=i.medicine.medicine_name)
                stock = medicine[0].total_stock
                new_value = int(stock) - i.quantity
                medicine.update(total_stock=new_value)
                orderitem = OrderItem.objects.filter(id=i.id).delete()
            return redirect('/')
        return render(request, 'checkout.html',{"title":"Shop"})
    else:
        return redirect('/')
