*** Settings ***
Documentation    Aqui fica toda a configruação de Pages dos cenarios

Resource         ../core/KWSCenarios.robot

*** Keywords ***
que eu esteja na Home Page da Unimed
    ${PAGE_TITLE}                    Get Title
    Should Be Equal                  ${PAGE_TITLE}               Home - Site Institucional

clicar em "${CONSULTE_AGORA}"
    Page Should Contain              ${CONSULTE_AGORA}
    # Scroll Element Into View    ${BOTAO_CONSULTA} // Move o scroll do mouse até o elemento
    Click Element                    ${BOTAO_CONSULTA}

acessar a aba de "${BUSCA_DETALHADA}"
    ${PAGE_TITLE}                    Get Title
    Should Be Equal                  ${PAGE_TITLE}               Guia Médico - Site Institucional

    Element Should Contain           ${HEADING_TITLE}            Encontre um médico
    Element Should Contain           ${HEADING_SUB_TITLE}        E outros recursos da Unimed, sempre perto de você

    Click Element                    ${BOTAO_BUSCA_DETALHADA}

pesquisar pelo estado do "${RIO_DE_JANEIRO}"

    Wait Until Element Is Visible    ${SELECT_ESTADO}
    Click Element                    ${SELECT_ESTADO}

    Wait Until Element Is Visible    ${RIO}
    Click Element                    ${RIO}

eu efetuar a buscar pelo estado selecionado

    Wait Until Element Is Visible    ${BOTAO_PESQUISAR}
    Click Element                    ${BOTAO_PESQUISAR}

    Sleep                            5
    ${TEXTO}                         Get Text                    ${TEXTO_BUSCA}
    Log                              ${TEXTO}

devo validar a apresentação dos resultados com a Especialidade e Cidade

    Wait Until Element Is Visible    ${LOCALIZACAO}
    ${VALIDA_LOCALIZACAO}            Get Text                    ${LOCALIZACAO}
    Log                              ${VALIDA_LOCALIZACAO}
    # Element Text Should Be           ${VALIDA_LOCALIZACAO}       Centro, Porciúncula/RJ // verificar