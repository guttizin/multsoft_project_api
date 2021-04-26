# Generated by Django 3.2 on 2021-04-21 23:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('filmes', '0001_initial'),
        ('clientes', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Aluguel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('dataAluguel', models.DateField(auto_now_add=True)),
                ('dataDevolucao', models.DateField()),
                ('preco', models.DecimalField(decimal_places=2, max_digits=7)),
                ('concluido', models.BooleanField(blank=True, default=False)),
                ('cliente', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='clientes.cliente')),
                ('filme', models.ManyToManyField(to='filmes.Filme')),
            ],
        ),
    ]