*** Settings ***
Documentation   Aqui tem toda a Keyword de Gancho


***Keywords***
####################### ---------- Gherkim -------- ####################################
Dado 
    [Arguments]    ${keyword}
    run keyword    ${keyword}
Quando 
    [Arguments]    ${keyword}
    run keyword    ${keyword}
Então 
    [Arguments]    ${keyword}
    run keyword    ${keyword}
E 
    [Arguments]    ${keyword}
    run keyword    ${keyword}
Mas 
    [Arguments]    ${keyword}
    run keyword    ${keyword}

CONTEXTO
    [Arguments]    ${keyword}
    run keyword    ${keyword}