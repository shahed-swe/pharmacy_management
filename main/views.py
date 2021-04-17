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
                user_address = request.POST.get('address'),
                phone_no = request.POST.get('phone-no'),
                password = request.POST.get('password')
            )
            seller.save()
    return render(request, 'registration.html', {"title":"Registration"})

def mylogout(request):
    logout(request)
    return redirect('/login')
