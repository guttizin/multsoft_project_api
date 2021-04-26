import json

from django.shortcuts import render

from django.http.response import JsonResponse
from rest_framework.parsers import JSONParser 
from rest_framework import status
 
from clientes.models import Cliente
from clientes.api.serializers import ClienteSerializer
from rest_framework.decorators import api_view, permission_classes

from rest_framework.permissions import IsAuthenticated

from rest_framework.response import Response

# @permission_classes([IsAuthenticated])


@api_view(['GET'])
@permission_classes([IsAuthenticated])
def cliente_list(request):
    if request.method == 'GET':
        clientes = Cliente.objects.all()
        
        nome = request.GET.get('nome', None)
        if nome is not None:
            clientes = clientes.filter(nome__icontains=nome)
        
        clientes_serializer = ClienteSerializer(clientes, many=True)
        return JsonResponse(clientes_serializer.data, safe=False)
    return JsonResponse({'message': 'Metodo inválido de buscas'})

@api_view(['GET'])
@permission_classes([IsAuthenticated])
def cliente_detail(request, pk):
    try:
        cliente = Cliente.objects.get(pk=pk)
    except Cliente.DoesNotExist:
        return JsonResponse({'message': 'O cliente não existe'}, status=status.HTTP_404_NOT_FOUND)
    if request.method == 'GET':
        cliente_serializer = ClienteSerializer(cliente)
        return JsonResponse(cliente_serializer.data)
    return JsonResponse({'message': 'Metodo inválido de buscas'})

@api_view(['POST'])
@permission_classes([IsAuthenticated])
def cliente_create(request):
    cliente_data = JSONParser().parse(request)
    cliente_serializer = ClienteSerializer(data=cliente_data)
    if cliente_serializer.is_valid():
        cliente_serializer.save()
        return JsonResponse(cliente_serializer.data, status=status.HTTP_201_CREATED)
    return JsonResponse(cliente_serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['PUT','UPDATE'])
@permission_classes([IsAuthenticated])
def cliente_update(request):
    cliente_data = JSONParser().parse(request)
    try:
        cliente = Cliente.objects.get(id=cliente_data['id'])
    except Cliente.DoesNotExist:
        return JsonResponse({'message': 'O cliente não existe'}, status=status.HTTP_404_NOT_FOUND)
    cliente_serializer = ClienteSerializer(cliente, data=cliente_data)
    if cliente_serializer.is_valid():
        cliente_serializer.save()
        return JsonResponse(cliente_serializer.data)
    return JsonResponse(cliente_serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['DELETE'])
@permission_classes([IsAuthenticated])
def cliente_delete(request, pk):
    try:
        cliente = Cliente.objects.get(id=pk)
    except Cliente.DoesNotExist:
        return JsonResponse({'message': 'O cliente não existe'}, status=status.HTTP_404_NOT_FOUND)
    if request.method == 'DELETE':
        cliente.delete()
        return JsonResponse({'message': 'O cliente '+ cliente.nome +' foi deletado'}) # , status=status.HTTP_204_NO_CONTENT
    return JsonResponse(cliente_serializer.errors, status=status.HTTP_400_BAD_REQUEST)