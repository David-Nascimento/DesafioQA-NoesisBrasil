*** Settings ***
Documentation    No site https://www.unimed.coop.br/ validar a seguinte sequência de ações


Resource         ../config/Cucumber/Cucumber-PTBr.robot
Resource         ../resource/Pages/cenario_1Page.robot
Resource         ../config/hooks/driverFactory.robot

Test Setup       Open session
Test Teardown    Close session

*** Test Case ***
Cenario 01: Deve validar a apresentação dos resultados com a Especialidade e Cidade
    [Tags]    cenarioValidaApresentacaoResultados
    Dado      que eu esteja na Home Page da Unimed
    E         clicar em "Consulte agora"
    E         acessar a aba de "Busca detalhada"
    E         pesquisar pelo estado do "Rio de Janeiro"
    Quando    eu efetuar a buscar pelo estado selecionado
    Então     devo validar a apresentação dos resultados com a Especialidade e Cidade
