from django.urls import include, path
from . import views, urls
from django.urls import admin
from django.conf.urls.static import static

urlpatterns = [
    path('', views.register, name='register'),
    path('secregister', views.secregister, name='secregister'),
    path('accounts/', include('allauth.urls')),
    path('loginpage', views.loginpage, name='loginpage'),
    path('home', views.home, name='home'),
    path('profile', views.profile, name="profile"),
    path('reset', views.reset, name="reset"),
    path('troubleshoot', views.troubleshoot, name="troubleshoot"),
    path('complain', views.complain, name="complain"),
    path('logout', views.logout, name="logout"),
    path('delete/<int:id>', views.delete, name='delete'),
    path('update/<int:id>', views.update, name='update'),
    path('update/updaterecord/<int:id>', views.updaterecord, name='updaterecord'),

]


