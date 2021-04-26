from django.conf.urls import url 
from filmes import views 
 
urlpatterns = [ 
    url(r'^filmes$', views.filme_list),
    url(r'^filmes/disponiveis$', views.filme_list_disponivel),
    url(r'^filme/(?P<pk>[0-9]+)$', views.filme_detail),
    url(r'^filme/delete/(?P<pk>[0-9]+)$', views.filme_delete),
    url(r'^filme/alugar/(?P<pk>[0-9]+)$', views.filme_aluguel),
    url(r'^filme/devolver/(?P<pk>[0-9]+)$', views.filme_devolver),
    url(r'^filme/update', views.filme_createPut),
    url(r'^filme/create', views.filme_createPut),
]