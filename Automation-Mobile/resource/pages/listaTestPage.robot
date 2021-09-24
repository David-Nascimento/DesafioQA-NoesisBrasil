*** Settings ***
Documentation   Aqui fica todo os passos dos Cenarios de Testes

Resource   ../core/KWSlistaTest.robot
Resource   ../core/KWSloginTest.robot

*** Keywords ***
Realiza login
  Wait Until Element Is Visible     ${MENSAGEM_LOGIN}
  ${BEM_VINDO}      Get Text        ${MENSAGEM_LOGIN}
  Log               ${BEM_VINDO}

  Element Should Contain Text   ${MENSAGEM_LOGIN}    Olá, vamos testar o Login?

  Input Text    ${LOGIN}    admin
  Input Text    ${SENHA}    admin

  Click Element    ${SUBMIT}

  [Arguments]     ${MENSAGEM_ESPERADA}
  Wait Until Element Is Visible     ${BOAS_VINDAS}
  Sleep    2
  ${MENSAGEM_ATUAL}     Get Text    ${BOAS_VINDAS}
  Log             ${MENSAGEM_ATUAL}

  Element Text Should Be    ${BOAS_VINDAS}     ${MENSAGEM_ESPERADA}
  Page Should Contain Text  ${MENSAGEM_ATUAL}

Acessar o menu
  Wait Until Element Is Visible   ${NAV_MENU}
  Click Element     ${NAV_MENU}
  Sleep    2

  ${NOME_EXPERADO}    Get Text    ${NOME_PESSOA}
  Sleep    2
  Log     ${NOME_EXPERADO}
  Element Text Should Be    ${NOME_PESSOA}    Joao da Silva

Acessar a opção Lista
  Click Element     ${NAV_LISTA}

  Wait Until Element Is Visible   ${BUSCA_PESSOA}
  Input Text    ${BUSCA_PESSOA}   An

Validar busca
  Wait Until Element Is Visible    ${RESULTADO_BUSCA}
  Log   ${RESULTADO_BUSCA}
  ${text}    Get Text    ${RESULTADO_BUSCA}
  Log    ${text}
  Element Should Be Visible     ${RESULTADO_BUSCA}
  Page Should Contain Element   ${RESULTADO_BUSCA}
