from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from .models import *
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
# Create your views here.
def register(request):
    form = CreateUserForm()
    
    if request.method == "POST":
        form = CreateUserForm(request.POST)
        if form.is_valid():
            form.save()
    context = {'form': form}
    return render(request, 'app/register.html', context)
def login_page(request):
    if request.user.is_authenticated:
        return redirect('home')
    if request.method == "POST":
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username = username, password = password)
        if user is not None:
            login(request, user)
            return redirect('home')
        else:
            messages.info(request,'UserName or Password is incorrect!')
    context = {}

    return render(request, 'app/login.html', context)
def home(request):
    return render(request, 'app/home.html')
def logout_page(request):
    logout(request)
    return redirect('login')
def index(request):
    todo = Todo.objects.all()

    if request.method == 'POST':
        new_todo = Todo(
            title = request.POST['title']
        )
        new_todo.save()
        return redirect('/')


    return render(request, 'home.html', {'todos': todo})

def delete(request, pk):
    todo = Todo.objects.get(id=pk)
    todo.delete()
    return redirect('/')