from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required

# Create your views here.
# @login_required
# def index(request):
#     context = {
#         'title': "Dashboard"
#     }

#     return render(request, 'pages/index.html', context)

def auth_login(request):
    context = {
        'title': "Admin",
    }
    
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = authenticate(request, username=username, password=password)
        
        if user is not None: 
            login(request, user)
            return redirect('index')
        else:
            context['username'] = username
            context['error'] = "Username atau password salah."

    if request.method == "GET":
        if request.user.is_authenticated:
            return redirect('index')
    
    return render(request, 'pages/auth/login.html', context)

@login_required
def auth_logout(request):
    if request.method == 'POST':
        logout(request)

    return redirect('login')