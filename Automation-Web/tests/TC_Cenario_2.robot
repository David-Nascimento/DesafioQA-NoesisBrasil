*** Settings ***
Documentation    No site https://www.unimed.coop.br/ validar nas páginas 1, 2, e 3 do resultado, NÃO apresentação do resultado com cidade São Paulo


Resource         ../config/hooks/driverFactory.robot
Resource         ../resource/Pages/cenario_2Page.robot
Resource         ../config/Cucumber/cucumber-PTBr.robot

Test Setup       Open session
Test Teardown    Close session

*** Test Case ***
    [Tags]    deveValidarQuePesquisaNaoBusquePorSP
Cenario 02: Deve varrer as abas entre 1 e 3 e validar que não apresente o resultado da cidade de São Paulo
    Dado      que eu esteja na Home Page da Unimed
    E         clicar em "Consulte agora"
    E         acessar a aba de "Busca detalhada"
    E         pesquisar um médico no estado do "Rio de Janeiro"
    Quando    eu efetuar a buscar pelo estado selecionado
    Então     devo realizar a verificações entre as paginas que não haja resultado da cidade de "São Paulo"

Cenario 03: Deve Pesquisar Médico do Estado do Rio de Janeiro em São Paulo
    Dado      que eu esteja na Home Page da Unimed
    E         clicar em "Consulte agora"
    E         acessar a aba de "Busca detalhada"
    E         pesquisar um médico no estado do "Rio de Janeiro"
    Quando    eu efetuar a buscar pelo estado selecionado na cidade de São Paulo
    Então     devo verificar que a busca não teve retorno de médicos