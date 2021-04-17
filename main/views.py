from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth import authenticate, login, logout
from django.db import IntegrityError
from .models import *
# Create your views here.
def home(request):
    if not request.user.is_authenticated:
        return redirect('/login')
    return render(request, 'home.html', {"title":"Home"} )


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
            return HttpResponse("Hi i am seller")
        elif request.user.is_customer:
            return HttpResponse("Hi i am customer")
        elif request.user.is_superuser:
            return redirect('/')
        else:
            pass
    else:
        return redirect('/')