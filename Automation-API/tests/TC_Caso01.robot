*** Settings ***
Documentation     Casos de Testes para a API

Resource    ../config/hookApi.robot
Resource    ../resource/routes/omdbapiGet.robot

Suite Setup   Conectar a API

*** Test Cases ***
#No endpoint validar o response para
Titulo do Filme
  Confere Status Code   200
  Confere Reason    OK
  Confere se retorna 25 Filmes
  Confere Titulo do Filme     The Social Network

Ano do Filme
  Confere Status Code   200
  Confere Reason    OK
  Confere se retorna 25 Filmes
  Confere ano do Filme    2010

Idioma do filme
  Confere Status Code   200
  Confere Reason    OK
  Confere se retorna 25 Filmes
  Confere Idioma do Filme   English, French
