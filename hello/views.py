from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from django.http.response import JsonResponse
from rest_framework.parsers import JSONParser 
from rest_framework import status
 
# from tutorials.models import Tutorial
# from tutorials.serializers import TutorialSerializer
from rest_framework.decorators import api_view

class HelloView(APIView):
    permission_classes = (IsAuthenticated,)


    def get(self, request):
        content = {'message': 'Hello, World! GET'}
        return Response(content)
    # def post(self, request):
    #     content = {'message': 'Hello, World! POST'}
    #     return Response(content)
    @api_view(['GET', 'POST', 'DELETE'])
    def hello_list(request):
        if request.method == 'GET':
            content = {'message': 'Hello, World! hello_list GET'}
            return Response(content)
            #### return JsonResponse(content)
        if request.method == 'POST':
            content = {'message': 'Hello, World! hello_list POST'}
            return Response(content)
        if request.method == 'DELETE':
            content = {'message': 'Hello, World! hello_list DELETE'}
            return Response(content)
    @api_view(['GET'])
    def hello_list_published(request):
        if request.method == 'GET':
            content = {'message': 'Hello, World! hello_list_published'}
            return Response(content)