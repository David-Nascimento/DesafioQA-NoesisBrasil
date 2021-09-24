*** Settings ***
Documentation   Aqui fica todo os passos dos Cenarios de Testes

Resource   ../core/KWSformTest.robot

*** Keywords ***
Acessa opção Form
  Wait Until Element Is Visible   ${BOTAO_FORM}
  Click Element   ${BOTAO_FORM}

Selecionar Techs
  Wait Until Element Is Visible    ${MENSAGEM_OPCAO}
  ${text}     Get Text        ${MENSAGEM_OPCAO}
  Log   ${text}

  Sleep    2
  Click Element                     ${ROBOT_FRAMEWORK}
  Wait Until Element Is Visible     ${ROBOT_FRAMEWORK}
  Element Attribute Should Match    ${ROBOT_FRAMEWORK}    checked   true

  Sleep    2
  Click Element                     ${PYTHON}
  Wait Until Element Is Visible     ${PYTHON}
  Element Attribute Should Match    ${PYTHON}    checked   true
