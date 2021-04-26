from rest_framework.authtoken.views import obtain_auth_token


"""multisoft_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
# from django.contrib import admin
# from django.urls import path
# from django.conf.urls import include
# from rest_framework import routers

# urlpatterns = [
#     path('admin/', admin.site.urls),
# ]
from django.contrib import admin
from django.conf.urls import url, include
from django.urls import path
from rest_framework import routers

# from clientes.api.viewsets import ClienteViewSet
# from filmes.api.viewsets import FilmeViewSet
# from enderecos.api.viewsets import EnderecoViewSet
# from alugueis.api.viewsets import AluguelViewSet

router = routers.DefaultRouter()

# router.register(r'clientes', ClienteViewSet)
# router.register(r'filmes', FilmeViewSet)
# router.register(r'enderecos', EnderecoViewSet)
# router.register(r'alugueis', AluguelViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include(router.urls)),
    path('api-auth/', include('rest_framework.urls')),
    path('api-token-auth/', obtain_auth_token, name='api_token_auth'),

    url(r'^', include('hello.urls')),
    url(r'^', include('filmes.urls')),
    url(r'^', include('enderecos.urls')),
    url(r'^', include('clientes.urls')),
    url(r'^', include('alugueis.urls')),
]