from django.conf.urls import url 
from alugueis import views 
 
urlpatterns = [ 
    url(r'^alugueis$', views.aluguel_list),
    url(r'^aluguel/(?P<pk>[0-9]+)$', views.aluguel_detail),
    url(r'^aluguel/create$', views.aluguel_create),
    url(r'^aluguel/update', views.aluguel_update),
    url(r'^aluguel/delete/(?P<pk>[0-9]+)$', views.aluguel_delete),
]