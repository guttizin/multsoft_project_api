import json

from django.shortcuts import render

from django.http.response import JsonResponse
from rest_framework.parsers import JSONParser 
from rest_framework import status
 
from filmes.models import Filme
from filmes.api.serializers import FilmeSerializer
from rest_framework.decorators import api_view, permission_classes

from rest_framework.permissions import IsAuthenticated

from rest_framework.response import Response

# @permission_classes([IsAuthenticated])

@api_view(['GET'])
def filme_list(request):
    if request.method == 'GET':
        filmes = Filme.objects.all()
        nome = request.GET.get('nome', None)
        if nome is not None:
            filmes = filmes.filter(nome__icontains=nome)
        filmes_serializer = FilmeSerializer(filmes, many=True)
        return JsonResponse(filmes_serializer.data, safe=False)
    return JsonResponse({'message': 'Metodo inválido de buscas'})
    # GET list of filmes, POST a new filme, DELETE all filmes
  
@api_view(['GET'])
def filme_list_disponivel(request):
    filmes = Filme.objects.filter(disponivel=True)
        
    if request.method == 'GET': 
        filmes_serializer = FilmeSerializer(filmes, many=True)
        return JsonResponse(filmes_serializer.data, safe=False)
    
    return JsonResponse({'message': 'Metodo inválido de buscas'})

@api_view(['GET'])
def filme_detail(request, pk):
    try:
        filme = Filme.objects.get(pk=pk)

    except Filme.DoesNotExist:
        return JsonResponse({'message': 'O filme não existe'}, status=status.HTTP_404_NOT_FOUND)
    if request.method == 'GET':
        filme_serializer = FilmeSerializer(filme)
        return JsonResponse(filme_serializer.data)
    return JsonResponse({'message': 'Metodo inválido de buscas'})

@api_view(['POST','UPDATE', 'PUT'])
@permission_classes([IsAuthenticated])
def filme_createPut(request):
    filme_data = JSONParser().parse(request)
    if request.method == 'POST':
        filme_serializer = FilmeSerializer(data=filme_data)
        if filme_serializer.is_valid():
            filme_serializer.save()
            return JsonResponse(filme_serializer.data, status=status.HTTP_201_CREATED)
        return JsonResponse(filme_serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'UPDATE' or request.method == 'PUT':
        try:
            filme = Filme.objects.get(id=filme_data['id'])
        except Filme.DoesNotExist:
            return JsonResponse({'message': 'O filme não existe'}, status=status.HTTP_404_NOT_FOUND)
        filme_serializer = FilmeSerializer(filme, data=filme_data)
        if filme_serializer.is_valid():
            filme_serializer.save()
            return JsonResponse(filme_serializer.data)
        return JsonResponse(filme_serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['DELETE'])
@permission_classes([IsAuthenticated])
def filme_delete(request, pk):
    try:
        filme = Filme.objects.get(id=pk)
    except Filme.DoesNotExist:
        return JsonResponse({'message': 'O filme não existe'}, status=status.HTTP_404_NOT_FOUND)
    if request.method == 'DELETE':
        filme.delete()
        return JsonResponse({'message': 'O filme '+ filme.nome +' foi deletado'}) # , status=status.HTTP_204_NO_CONTENT
    return JsonResponse(filme_serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
@api_view(['UPDATE','POST','PUT'])
@permission_classes([IsAuthenticated])
def filme_aluguel(request, pk):
    try:
        filme = Filme.objects.get(pk=pk)

    except Filme.DoesNotExist:
        return JsonResponse({'message': 'O filme não existe'}, status=status.HTTP_404_NOT_FOUND)
    if not filme.disponivel:
        return JsonResponse({'message': 'O filme já está alugado'})
    
    filme.disponivel = False
    filme.save()
    return JsonResponse({'message': 'Filme alugado com sucesso'})

        # json_dict.disponivel = False ##json_dict = string

        # # obj = JSONParser.parse(json_dict)

        # return JsonResponse(obj)
        # filme_serializer = FilmeSerializer(filme)
        # my_dict = filme_serializer.data ## DIC
        # json_dict = json.dumps(my_dict)
        # obj = json.loads(json_dict) ## virou json de novo
        # # obj = JSONParser.parse(json_dict)
        # obj['disponivel'] = False

        # filme_serializer = FilmeSerializer(filme)
        # my_dict = filme_serializer.data ## DIC
        # json_dict = json.dumps(my_dict)
        # obj = json.loads(json_dict) ## virou json de novo
        # obj['disponivel'] = False
        # print(json_dict)
        # obj_dumps = json.dumps(obj)
        


        # print(json_dict)

        # return JsonResponse(filme_serializer.data, safe=False)

        ##Um dict que entra no filme_serializer = FilmeSerializer(filme, data=UM_DICT_ AQUI)
        # return JsonResponse({
        #     'filme': type(filme).__name__ ,
        #     'filme_serializer': type(filme_serializer).__name__ ,
        #     'my_dict': type(my_dict).__name__ ,
        #     'filme_serializer.data': type(filme_serializer.data).__name__ ,
        #     'json_dict': type(json_dict).__name__ ,
        #     'obj': type(obj).__name__ ,
        #     'obj_dumps': type(obj_dumps).__name__ 
        #     }
        #     , safe=False)

@api_view(['UPDATE','POST','PUT'])
@permission_classes([IsAuthenticated])
def filme_devolver(request, pk):
    try:
        filme = Filme.objects.get(pk=pk)
    except Filme.DoesNotExist:
        return JsonResponse({'message': 'O filme não existe'}, status=status.HTTP_404_NOT_FOUND)
    if filme.disponivel:
        return JsonResponse({'message': 'O filme já está disponível'})
    filme.disponivel = True
    filme.save()
    return JsonResponse({'message': 'Filme devolvido com sucesso'})