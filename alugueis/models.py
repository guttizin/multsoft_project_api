from django.db import models
from filmes.models import Filme
from clientes.models import Cliente


class Aluguel(models.Model):
	filme = models.ManyToManyField(Filme)
	cliente = models.ForeignKey(Cliente, on_delete=models.PROTECT)
	dataAluguel = models.DateField(auto_now_add=True)
	dataDevolucao = models.DateField()
	preco = models.DecimalField(max_digits=7, decimal_places=2)
	concluido = models.BooleanField(default=False, blank=True)

	def __str__(self):
		return str(self.cliente) + ' - Devolução: ' + str(self.dataDevolucao)