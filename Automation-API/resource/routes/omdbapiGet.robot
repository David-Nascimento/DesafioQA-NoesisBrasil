*** Settings ***
Documentation     Rota GET

*** Variables ***
&{FILME_TSW}   Title=The Social Network
...            Year=2010
...            Language=English, French

&{FILME_NAO_EXISTE}   Response=False
...                   Error=Incorrect IMDb ID.

*** Keywords ***
Confere Status Code
  [Arguments]   ${200}

  Should Be Equal As Strings    ${RESPOSTA.status_code}    ${200}
  Log           ${RESPOSTA.status_code}

Confere Reason
  [Arguments]   ${OK}

  Should Be Equal As Strings    ${RESPOSTA.reason}    ${OK}
  Log                 ${RESPOSTA.reason}

Confere se retorna ${QTDE_FILMES} Filmes

  Length Should Be    ${RESPOSTA.json()}    ${QTDE_FILMES}
  Log                 ${RESPOSTA.text}

Confere Titulo do Filme
  [Arguments]         ${TITULO_FILME}
  Dictionary Should Contain Item    ${RESPOSTA.json()}  Title   ${FILME_TSW.Title}
  Log     ${FILME_TSW.Title}

Confere ano do Filme
  [Arguments]         ${ANO_FILME}
  Dictionary Should Contain Item    ${RESPOSTA.json()}  Year   ${FILME_TSW.Year}
  Log     ${FILME_TSW.Year}

Confere Idioma do Filme
  [Arguments]         ${IDIOMA}
  Dictionary Should Contain Item    ${RESPOSTA.json()}  Language   ${FILME_TSW.Language}
  Log     ${FILME_TSW.Language}

Confere se o retorno existe filme
  Dictionary Should Contain Item    ${RESPOSTA.json()}  Response    ${FILME_NAO_EXISTE.Response}
  Log     ${FILME_NAO_EXISTE.Response}
  Dictionary Should Contain Item    ${RESPOSTA.json()}  Error    ${FILME_NAO_EXISTE.Error}
  Log     ${FILME_NAO_EXISTE.Error}
