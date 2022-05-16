from django.test import TestCase
from django.test import User



# Create your tests here.
class extendeduser(TestCase):

    def test_should_extend_user(self):
        user = User.objects.create_user(
            username='hafeza', email = 'hafeza.akter@northsouth.edu'
           
        )
        user.set_password('hafeza123')
        user.save()
        newextendeduser = extendeduser(id = '1922175042', fullname = 'Hafeza Akter',  role = 'Student', pic = 'hafeza.jpg')
        newextendeduser.save()
        self.assertEqual(str(newextendeduser), 'ExtendedUSer')


class Complain(TestCase):
    
    def test_should_complain(self):
        complain = Complain(
            email = 'trum@northsouth.edu', complain='Something bla bla', against = 'putin', position = 'Faculty'
           )
        complain.save()
        self.assertEqual(str(complain), 'Complain')



