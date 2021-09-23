*** Settings ***
Documentation   Aqui fica um hook para os cenarios que contem o inicio "Deve"

*** Keywords ***
Devo
  [Arguments]     ${Keywords}
  run Keyword     ${Keywords}

Deve
  [Arguments]     ${Keywords}
  run Keyword     ${Keywords}
  
