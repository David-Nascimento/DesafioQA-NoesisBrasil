*** Settings ***
Documentation     Casos de Testes para a API

Resource    ../config/hookApi.robot
Resource    ../resource/routes/omdbapiGet.robot

Suite Setup   Conectar a API Caso_2

*** Test Cases ***
Busca filme inexistente
  Confere Status Code   200
  Confere Reason    OK
  Confere se retorna 2 Filmes
  Confere se o retorno existe filme
