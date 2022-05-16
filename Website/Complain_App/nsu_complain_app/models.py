from email.policy import default
from django.db import models, connections
from django.contrib.auth.models import User
from django.utils.timezone import now


class extendeduser(models.Model):

    fullname = models.CharField(max_length=70, default='Not Selected')
    pic =  models.ImageField(upload_to = 'static', null=True, blank=True, default='2.png')
    role = models.CharField(max_length=200, default='Not Selected')
    user = models.OneToOneField(User, on_delete= models.CASCADE)
    class Meta:
        db_table = "extendeduser"
    def __str__(self) :
        return self.fullname

# Create your models here.

class Complain(models.Model):

         email = models.EmailField(max_length=100)
         complain = models.CharField(max_length=200)
         against = models.CharField(max_length=200)
         position = models.CharField(max_length=200)
         image =  models.ImageField(upload_to = 'static', null=True, blank=True, default='2.png')
         class Meta:
            db_table = "Complain"
         def __str__(self) :
             return self.email 

class Comment(models.Model):
    email = models.EmailField(max_length=100)
    complain = models.ForeignKey(Complain, related_name="comments", on_delete=models.CASCADE)
    username = models.CharField(max_length=80)
    body = models.TextField(max_length=190)
    # date_added = models.DateTimeField(default=now)
    class Meta:
        db_table = "Comment"
    def __str__(self) :
        return self.complain.email



class Troubleshoot(models.Model):
    fullname = models.CharField(max_length=80)
    nsuid = models.CharField(max_length=80)
    email = models.EmailField(max_length=100)
    comment = models.TextField(max_length=100)
    class Meta:
        db_table = "Troubleshoot"
    def __str__(self) :
        return self.email
