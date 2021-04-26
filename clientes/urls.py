from django.conf.urls import url 
from clientes import views 
 
urlpatterns = [ 
    url(r'^clientes$', views.cliente_list),
    url(r'^cliente/(?P<pk>[0-9]+)$', views.cliente_detail),
    url(r'^cliente/create$', views.cliente_create),
    url(r'^cliente/update', views.cliente_update),
    url(r'^cliente/delete/(?P<pk>[0-9]+)$', views.cliente_delete),
]