from django.db import models

class Filme(models.Model):
    nome = models.CharField(max_length=40)
    resumo = models.TextField()
    anoLancamento = models.IntegerField()
    duracao = models.IntegerField()
    genero = models.CharField(max_length=15)
    preco = models.DecimalField(max_digits=7, decimal_places=2)
    disponivel = models.BooleanField(default=True)

def __str__(self):
    if self.disponivel:
        return 'Disponível - ' + self.nome + '(' + self.anoLancamento + ': '+ self.duracao + ' segundos)' + ' - ' + self.resumo
    else:
        return 'Indisponível - ' + self.nome + '(' + self.anoLancamento + ': '+ self.duracao + ' segundos)' + ' - ' + self.resumo