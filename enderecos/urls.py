from django.conf.urls import url 
from enderecos import views 
 
urlpatterns = [ 
    url(r'^enderecos$', views.endereco_list),
    url(r'^endereco/(?P<pk>[0-9]+)$', views.endereco_detail),
    url(r'^endereco/create$', views.endereco_create),
    url(r'^endereco/update', views.endereco_update),
    url(r'^endereco/delete/(?P<pk>[0-9]+)$', views.endereco_delete),
]