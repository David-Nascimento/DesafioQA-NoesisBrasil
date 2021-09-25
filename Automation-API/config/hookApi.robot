*** Settings ***
Documentation   Criar um projeto de automação para API utilizando framework de sua preferência os cenários
...             para as duas funcionalidades abaixo: EndPoint

Library     RequestsLibrary
Library     Collections

*** Variables ***
${API_URL}    http://www.omdbapi.com/
# http://www.omdbapi.com/?i=[ID_DO_FILME]&apikey=[API_KEY]
# Parâmetros ID_DO_FILME: tt1285016 API_KEY= 52ec71bf


*** Keywords ***
### Setup and Teardown
Conectar a API
  Create Session    omdbapi    ${API_URL}

  ${RESPOSTA}   Get Request   omdbapi   ?i=tt1285016&apikey=52ec71bf

  Set Global Variable    ${RESPOSTA}    ${RESPOSTA}

Conectar a API Caso_2
  Create Session    omdbapi    ${API_URL}

  ${RESPOSTA}   Get Request   omdbapi  ?i=tt128501735&apikey=52ec71bf

  Set Global Variable    ${RESPOSTA}    ${RESPOSTA}
