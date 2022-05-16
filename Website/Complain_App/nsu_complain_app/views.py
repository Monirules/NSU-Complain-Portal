from multiprocessing import context
from django.shortcuts import render, get_object_or_404, reverse
from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render, redirect
from nsu_complain_app import views
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User, auth
from django.views.decorators.cache import cache_control
from django.contrib.auth.decorators import login_required
from nsu_complain_app.models import Complain, extendeduser
from operator import itemgetter
import mysql.connector
from django.conf import settings
from django.http import HttpResponse, HttpResponseRedirect
from django.views.generic.base import TemplateView
from django.template import loader
from django.urls import reverse
from .models import Complain, Troubleshoot, Comment
from django.core.mail import send_mail

# Create your views here.



@login_required

def home(request):
	return render(request, 'home.html')


@login_required

def profile(request): 
	data = extendeduser.objects.filter(user_id=request.user.id)
	context = {
		'data' : data,
		}
	return render(request, 'profile.html', context)
# {'data' : data}


def reset(request):
    return render(request,'ResetPass.html')


@login_required
def troubleshoot(request):
    return render(request,'troubleshoot.html')


@login_required

def complain(request):
	
	mymembers = Complain.objects.filter(email=request.user.email)
	comment = Comment.objects.filter(email=request.user.email)
	
	template = loader.get_template('complain.html')
	context = {
			'mymembers': mymembers,
			'comment': comment
			}

	if request.method=='POST':  
        
			email = request.POST['email']
			complain = request.POST['complain']
			against = request.POST['against']
			position = request.POST['position']
			image = request.FILES.get('image')
			user = User.objects.filter(username = against)
			send_mail(
				'NSU Complain Portal',
				complain,
				settings.EMAIL_HOST_USER,
				[email],
				fail_silently=False,
			)
			if user.first() is not None:
				if request.user == user.first():
						messages.error(request, 'You are complaining against Yourself :o ')
						return redirect('complain')

						pass

				if User.objects.filter(username = against).exists():	
					complain = Complain(email = email, complain=complain, against = against, position = position, image=image)
					complain.save()
					messages.success(request, 'Complain Submit Successful')

					
					return HttpResponse(template.render(context, request))
					
			else:
					messages.error(request, 'You are complaining against Non-User (-,-)')
					return redirect('complain')
    
	else:
   		return render(request,'complain.html', context)



def delete(request, id):
	member = Complain.objects.get(id=id)
	member.delete()
	return HttpResponseRedirect(reverse('complain'))
	



def update(request, id):
  mymember = Complain.objects.get(id=id)
  template = loader.get_template('update.html')
  context = {
    'mymember': mymember,
  }
  return HttpResponse(template.render(context, request))


def updaterecord(request, id):

	if request.method=='POST':
		email = request.POST['email']
		complain = request.POST['complain']
		against = request.POST['against']
		position = request.POST['position']
		image = request.FILES.get('image')

		member = Complain.objects.get(id=id)
		member.email = email
		member.complain = complain
		member.against = against
		member.position = position
		member.image = image
		member.save()
		return HttpResponseRedirect(reverse('complain'))
   




# @cache_control(no_cache=True, must_revalidate=True, no_store=True)
def logout(request):
	auth.logout(request)
	return redirect('loginpage')



# @cache_control(no_cache=True, must_revalidate=True, no_store=True)
def loginpage(request):

	if request.method == 'POST':
		username = request.POST['username']
		password = request.POST['password']
		user = auth.authenticate(username=username,password=password)

		if user is not None:	
			auth.login(request, user) 
			return redirect('home')		
		else:
			messages.error(request, 'Wrong username or password')
			return redirect('loginpage')
		
	else:
		return render(request,'loginpage.html')



# @cache_control(no_cache=True, must_revalidate=True, no_store=True)
def register(request):

	if request.method == "POST":
		fullname = request.POST['fullname']
		username = request.POST['username']	
		email = request.POST['email']
		password = request.POST['password']
		role = request.POST['role']
		pic = request.FILES.get('pic')

		if User.objects.filter(username = username).exists():
			messages.error(request, "Username already exist")
			return redirect('/')

		if User.objects.filter(email = email).exists():
			messages.error(request, "Email already exist")
			return redirect('/')

		if not request.POST.get('email').endswith('@northsouth.edu'):
			messages.error(request, "Enter NSU mail only")
			return redirect('/')

		else:
			user = User.objects.create_user(username = username, password=password, email=email)
			user.save()
			
			newextendeduser = extendeduser(fullname=fullname,  role=role, pic=pic, user=user)
			newextendeduser.save()
			
			reg = request.POST.get('username')
			messages.info(request, 'Account created for - Mr. ' + reg)
			return redirect('/')
		
		
	else:
		return render (request, 'registration.html')



@login_required
def troubleshoot(request):

	if request.method == "POST":

		fullname = request.POST['fullname']
		nsuid = request.POST['nsuid']	
		email = request.POST['email']
		comment = request.POST['comment']

		troubleshoot = Troubleshoot(fullname=fullname, nsuid=nsuid, email=email, comment=comment)
		troubleshoot.save()
		messages.info(request, "Your message sent successfully")
	return render (request, 'troubleshoot.html')


