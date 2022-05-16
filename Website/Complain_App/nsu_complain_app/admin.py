from django.contrib import admin
# Register your models here.


from .models import Complain
admin.site.register(Complain)


from .models import extendeduser
admin.site.register(extendeduser)


from .models import Comment
admin.site.register(Comment)


from .models import Troubleshoot
admin.site.register(Troubleshoot)


# from .models import Faculty
# admin.site.register(Faculty)


# from .models import Register
# admin.site.register(Register)