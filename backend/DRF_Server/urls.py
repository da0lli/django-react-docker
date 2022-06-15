"""DRF_Server URL Configuration"""

from django.contrib import admin
from django.urls import path
from api.views import apiTest

urlpatterns = [
    path('admin/', admin.site.urls),
    path('apiTest/', apiTest),
]
