*** Settings ***
Documentation    Aqui fica toda a configruação de Pages dos cenarios

Resource         ../core/KWSCenarios.robot

*** Keywords ***
que eu esteja na Home Page da Unimed
    ${PAGE_TITLE}             Get Title
    Should Be Equal           ${PAGE_TITLE}           Home - Site Institucional

clicar em "${CONSULTE_AGORA}"
    Page Should Contain       ${CONSULTE_AGORA}
    # Scroll Element Into View    ${BOTAO_CONSULTA} // Move o scroll do mouse até o elemento
    Click Element             ${BOTAO_CONSULTA}

acessar a aba de "${BUSCA_DETALHADA}"
    ${PAGE_TITLE}             Get Title
    Should Be Equal           ${PAGE_TITLE}           Guia Médico - Site Institucional

    Element Should Contain    ${HEADING_TITLE}        Encontre um médico
    Element Should Contain    ${HEADING_SUB_TITLE}    E outros recursos da Unimed, sempre perto de você