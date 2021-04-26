import json

from django.shortcuts import render

from django.http.response import JsonResponse
from rest_framework.parsers import JSONParser 
from rest_framework import status
 
from enderecos.models import Endereco
from enderecos.api.serializers import EnderecoSerializer
from rest_framework.decorators import api_view, permission_classes

from rest_framework.permissions import IsAuthenticated

from rest_framework.response import Response

# @permission_classes([IsAuthenticated])


@api_view(['GET'])
@permission_classes([IsAuthenticated])
def endereco_list(request):
    if request.method == 'GET':
        enderecos = Endereco.objects.all()
        
        nome = request.GET.get('nome', None)
        if nome is not None:
            enderecos = enderecos.filter(nome__icontains=nome)
        
        enderecos_serializer = EnderecoSerializer(enderecos, many=True)
        return JsonResponse(enderecos_serializer.data, safe=False)
    return JsonResponse({'message': 'Metodo inválido de buscas'})

@api_view(['GET'])
@permission_classes([IsAuthenticated])
def endereco_detail(request, pk):
    try:
        endereco = Endereco.objects.get(pk=pk)
    except Endereco.DoesNotExist:
        return JsonResponse({'message': 'O endereco não existe'}, status=status.HTTP_404_NOT_FOUND)
    if request.method == 'GET':
        endereco_serializer = EnderecoSerializer(endereco)
        return JsonResponse(endereco_serializer.data)
    return JsonResponse({'message': 'Metodo inválido de buscas'})

@api_view(['POST'])
@permission_classes([IsAuthenticated])
def endereco_create(request):
    endereco_data = JSONParser().parse(request)
    endereco_serializer = EnderecoSerializer(data=endereco_data)
    if endereco_serializer.is_valid():
        endereco_serializer.save()
        return JsonResponse(endereco_serializer.data, status=status.HTTP_201_CREATED)
    return JsonResponse(endereco_serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['PUT','UPDATE'])
@permission_classes([IsAuthenticated])
def endereco_update(request):
    endereco_data = JSONParser().parse(request)
    try:
        endereco = Endereco.objects.get(id=endereco_data['id'])
    except Endereco.DoesNotExist:
        return JsonResponse({'message': 'O endereco não existe'}, status=status.HTTP_404_NOT_FOUND)
    endereco_serializer = EnderecoSerializer(endereco, data=endereco_data)
    if endereco_serializer.is_valid():
        endereco_serializer.save()
        return JsonResponse(endereco_serializer.data)
    return JsonResponse(endereco_serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['DELETE'])
@permission_classes([IsAuthenticated])
def endereco_delete(request, pk):
    try:
        endereco = Endereco.objects.get(id=pk)
    except Endereco.DoesNotExist:
        return JsonResponse({'message': 'O endereco não existe'}, status=status.HTTP_404_NOT_FOUND)
    if request.method == 'DELETE':
        endereco.delete()
        return JsonResponse({'message': 'O endereco '+ endereco.logradouro +' foi deletado'}) # , status=status.HTTP_204_NO_CONTENT
    return JsonResponse(endereco_serializer.errors, status=status.HTTP_400_BAD_REQUEST)