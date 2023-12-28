from django.contrib import admin
from django.urls import path
from . import views
urlpatterns = [
    path('', views.home, name="home"),
    path('login/', views.login_page, name="login"),
    path('register/', views.register, name="register"),
    path('logout/', views.logout_page, name="logout"),
    path('', views.index, name='index'),
    path('delete/<str:pk>', views.delete,name='delete')
]