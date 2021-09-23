*** Settings ***
Documentation   Aqui fica todo os passos dos Cenarios de Testes

Resource   ../core/KWSloginTest.robot

*** Keywords ***
Valida Tela de Login
    Wait Until Element Is Visible   ${MENSAGEM_LOGIN}
    ${BEM_VINDO}     Get Text      ${MENSAGEM_LOGIN}
    Log             ${BEM_VINDO}

    Element Should Contain Text   ${MENSAGEM_LOGIN}    Olá, vamos testar o Login?

login invalido
  Input Text    ${LOGIN}    adm
  Input Text    ${SENHA}    admin

  Click Element    ${SUBMIT}

Senha Invalida
    Input Text    ${LOGIN}    admin
    Input Text    ${SENHA}    123456

    Click Element    ${SUBMIT}

inserir credenciais validas
  Input Text    ${LOGIN}    admin
  Input Text    ${SENHA}    admin

  Click Element    ${SUBMIT}

Validar mensagem
    [Arguments]     ${MENSAGEM_ESPERADA}
    Wait Until Element Is Visible     ${ALERTA_MENSAGEM}
    Sleep    2
    ${MENSAGEM_ATUAL}     Get Text    ${ALERTA_MENSAGEM}
    Log             ${MENSAGEM_ATUAL}

    Element Text Should Be    ${ALERTA_MENSAGEM}    ${MENSAGEM_ESPERADA}
    Page Should Contain Text  ${MENSAGEM_ATUAL}

Validar mensagem login
    [Arguments]     ${MENSAGEM_ESPERADA}
    Wait Until Element Is Visible     ${BOAS_VINDAS}
    Sleep    2
    ${MENSAGEM_ATUAL}     Get Text    ${BOAS_VINDAS}
    Log             ${MENSAGEM_ATUAL}

    Element Text Should Be    ${BOAS_VINDAS}     ${MENSAGEM_ESPERADA}
    Page Should Contain Text  ${MENSAGEM_ATUAL}
