*** Settings ***
Documentation   O desafio consiste em criar um projeto de automação mobile, para um APK Android.

Resource  ../config/appium/appiumDriver.robot
Resource  ../resource/pages/listaTestPage.robot
Resource  ../config/hook/hookCenarios.robot

# Executa a KW antes de cada testcase
Test Setup      Open Test Application
# Executa a KW depois de cada testcase
Test Teardown   Close Test Application

*** Test Cases ***
Deve Realizar busca ma na barra de pesquisa
        [Tags]    realizaBusca
        Realiza login    Bem-vindo ao seu desafio!
        Acessar o menu
        Acessar a opção Lista
        Validar busca
