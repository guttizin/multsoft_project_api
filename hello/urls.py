from django.conf.urls import url 
from hello import views 
 
urlpatterns = [ 
    url(r'^hellos', views.HelloView.hello_list),
    url(r'^hellos/published', views.HelloView.hello_list_published)
    # url(r'^api/tutorials/(?P<pk>[0-9]+)$', views.tutorial_detail),
]