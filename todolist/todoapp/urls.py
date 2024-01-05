from django.urls import path
from . import views

urlpatterns = [
    path('index/', views.index, name='index'),
    path('delete/<str:pk>', views.delete,name='delete'),
    path('login/', views.custom_login, name='login'),
    path('logout/', views.custom_logout, name='logout'),
    path('register/', views.register, name="register"),
    # path('', views.unauth_home, name="home")

    # path('logout/', views.logout_page, name="logout"),
]