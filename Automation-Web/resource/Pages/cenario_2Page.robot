*** Settings ***
Documentation    Aqui fica toda a configruação de Pages dos cenarios

Resource         ../core/KWSCenarios.robot

*** Keywords ***
que eu esteja na Home Page da Unimed
    ${PAGE_TITLE}                    Get Title
    Should Be Equal                  ${PAGE_TITLE}                  Home - Site Institucional

clicar em "${CONSULTE_AGORA}"
    Page Should Contain              ${CONSULTE_AGORA}
    # Scroll Element Into View    ${BOTAO_CONSULTA} // Move o scroll do mouse até o elemento
    Click Element                    ${BOTAO_CONSULTA}

acessar a aba de "${BUSCA_DETALHADA}"
    ${PAGE_TITLE}                    Get Title
    Should Be Equal                  ${PAGE_TITLE}                  Guia Médico - Site Institucional

    Element Should Contain           ${HEADING_TITLE}               Encontre um médico
    Element Should Contain           ${HEADING_SUB_TITLE}           E outros recursos da Unimed, sempre perto de você

    Click Element                    ${BOTAO_BUSCA_DETALHADA}

pesquisar um médico no estado do "${RIO_DE_JANEIRO}"

    Wait Until Element Is Visible    ${SELECIONA_MEDICO}
    Click Element                    ${SELECIONA_MEDICO}
    Input Text                       ${SELECIONA_MEDICO}            Manoel Barreto

    Wait Until Element Is Visible    ${SELECT_ESTADO}
    Click Element                    ${SELECT_ESTADO}

    Wait Until Element Is Visible    ${RIO}
    Click Element                    ${RIO}

eu efetuar a buscar pelo estado selecionado

    Wait Until Element Is Visible    ${BOTAO_PESQUISAR}
    Click Element                    ${BOTAO_PESQUISAR}

    Sleep                            5
    ${TEXTO}                         Get Text                       ${TEXTO_BUSCA}
    Log                              ${TEXTO}
    Element Should Contain           ${LOCALIZACAO}                 Sindicato, Natividade/RJ

devo realizar a verificações entre as paginas que não haja resultado da cidade de "${SAO_PAULO}"
    Wait Until Element Is Visible    ${MAIS_RESULTADOS}
    Click Element                    ${MAIS_RESULTADOS}

    Wait Until Element Is Visible    ${MENSAGEM_RESULTADO}
    ${CLICA_EM_MAIS_RESULTADOS}      Get Text                       ${MENSAGEM_RESULTADO}
    Log                              ${CLICA_EM_MAIS_RESULTADOS}
    Element Text Should Be           ${MENSAGEM_RESULTADO}          Você já encontrou todos os resultados disponíveis

    Set Global Variable    ${SAO_PAULO}

eu efetuar a buscar pelo estado selecionado na cidade de São Paulo
    Wait Until Element Is Visible    ${BOTAO_PESQUISAR}
    Click Element                    ${BOTAO_PESQUISAR}

    Sleep                            2
    ${TEXTO}                         Get Text                       ${TEXTO_BUSCA}
    Log                              ${TEXTO}
    Element Should Contain           ${LOCALIZACAO}                 Sindicato, Natividade/RJ

    # Pesquisar por São Paulo
    Click Element                   ${LIMPAR_PESQUISA}
    Click Element                   ${DROP_ESTADO}

    Scroll Element Into View        ${PESQUISAR_ESTADO}
    Click Element                   ${PESQUISAR_ESTADO}

    Scroll Element Into View        ${BOTAO_FILTRAR}
    Set Focus To Element            ${BOTAO_FILTRAR}

    Click Element                   ${BOTAO_FILTRAR}

devo verificar que a busca não teve retorno de médicos
    Wait Until Element Is Visible       ${MENSAGEM_MEDICO_NAO_EXISTE}
    ${MSG_MEDICO}     Get Text          ${MENSAGEM_MEDICO_NAO_EXISTE}
    Log                                 ${MSG_MEDICO}
