from django.db import models
from enderecos.models import Endereco

class Cliente(models.Model):
    nome = models.CharField(max_length=40)
    sobrenome = models.CharField(max_length=150)
    cpf = models.CharField(max_length=11, unique=True)
    rg = models.CharField(max_length=9, unique=True)
    dataNasc = models.DateField()
    endereco = models.ForeignKey(Endereco, on_delete=models.PROTECT)
    email = models.CharField(max_length=60, unique=True, blank=True)
    telefone = models.CharField(max_length=15)
    dataCadastro = models.DateField(auto_now_add=True)

def __str__(self):
    return self.nome + ' ' + self.sobrenome + ' - ' + self.cpf
