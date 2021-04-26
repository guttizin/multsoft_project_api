from rest_framework.viewsets import ModelViewSet
from alugueis.models import Aluguel
from .serializers import AluguelSerializer


class AluguelViewSet(ModelViewSet):
	queryset = Aluguel.objects.all()
	serializer_class = AluguelSerializer