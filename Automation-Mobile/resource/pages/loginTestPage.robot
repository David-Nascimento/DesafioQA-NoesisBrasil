*** Settings ***
Documentation   Aqui fica todo os passos dos Cenarios de Testes

Resource   ../core/KWSloginTest.robot

*** Keywords ***
Valida Tela de Login
    Wait Until Element Is Visible   ${MENSAGEM_LOGIN}
    ${BEM_VINDO}     Get Text      ${MENSAGEM_LOGIN}
    Log             ${BEM_VINDO}

    Element Should Contain Text   ${MENSAGEM_LOGIN}    Olá, vamos testar o Login?

Senha Invalida
    Input Text    ${LOGIN}    admin
    Input Text    ${SENHA}    123456

    Click Element    ${SUBMIT}

Validar mensagem
    [Arguments]     ${MENSAGEM_ESPERADA}
    Wait Until Element Is Visible     ${ALERTA_MENSAGEM}
    ${MENSAGEM_ATUAL}     Get Text    ${ALERTA_MENSAGEM}
    Log             ${MENSAGEM_ATUAL}

    Element Text Should Be    ${ALERTA_MENSAGEM}    ${MENSAGEM_ESPERADA}
    Page Should Contain Text  ${MENSAGEM_ATUAL}
