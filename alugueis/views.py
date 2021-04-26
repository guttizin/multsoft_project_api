import json

from django.shortcuts import render

from django.http.response import JsonResponse
from rest_framework.parsers import JSONParser 
from rest_framework import status
 
from alugueis.models import Aluguel
from alugueis.api.serializers import AluguelSerializer
from rest_framework.decorators import api_view, permission_classes

from rest_framework.permissions import IsAuthenticated

from rest_framework.response import Response

# @permission_classes([IsAuthenticated])


@api_view(['GET'])
@permission_classes([IsAuthenticated])
def aluguel_list(request):
    if request.method == 'GET':
        alugueis = Aluguel.objects.all()
        
        nome = request.GET.get('nome', None)
        if nome is not None:
            alugueis = alugueis.filter(nome__icontains=nome)
        
        alugueis_serializer = AluguelSerializer(alugueis, many=True)
        return JsonResponse(alugueis_serializer.data, safe=False)
    return JsonResponse({'message': 'Metodo inválido de buscas'})

@api_view(['GET'])
@permission_classes([IsAuthenticated])
def aluguel_detail(request, pk):
    try:
        aluguel = Aluguel.objects.get(pk=pk)
    except Aluguel.DoesNotExist:
        return JsonResponse({'message': 'O aluguel não existe'}, status=status.HTTP_404_NOT_FOUND)
    if request.method == 'GET':
        aluguel_serializer = AluguelSerializer(aluguel)
        return JsonResponse(aluguel_serializer.data)
    return JsonResponse({'message': 'Metodo inválido de buscas'})

@api_view(['POST'])
@permission_classes([IsAuthenticated])
def aluguel_create(request):
    aluguel_data = JSONParser().parse(request)
    aluguel_serializer = AluguelSerializer(data=aluguel_data)
    if aluguel_serializer.is_valid():
        aluguel_serializer.save()
        return JsonResponse(aluguel_serializer.data, status=status.HTTP_201_CREATED)
    return JsonResponse(aluguel_serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['PUT','UPDATE'])
@permission_classes([IsAuthenticated])
def aluguel_update(request):
    aluguel_data = JSONParser().parse(request)
    try:
        aluguel = Aluguel.objects.get(id=aluguel_data['id'])
    except Aluguel.DoesNotExist:
        return JsonResponse({'message': 'O aluguel não existe'}, status=status.HTTP_404_NOT_FOUND)
    aluguel_serializer = AluguelSerializer(aluguel, data=aluguel_data)
    if aluguel_serializer.is_valid():
        aluguel_serializer.save()
        return JsonResponse(aluguel_serializer.data)
    return JsonResponse(aluguel_serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['DELETE'])
@permission_classes([IsAuthenticated])
def aluguel_delete(request, pk):
    try:
        aluguel = Aluguel.objects.get(id=pk)
    except Aluguel.DoesNotExist:
        return JsonResponse({'message': 'O aluguel não existe'}, status=status.HTTP_404_NOT_FOUND)
    if request.method == 'DELETE':
        aluguel.delete()
        return JsonResponse({'message': 'O aluguel '+ aluguel.nome +' foi deletado'}) # , status=status.HTTP_204_NO_CONTENT
    return JsonResponse(aluguel_serializer.errors, status=status.HTTP_400_BAD_REQUEST)