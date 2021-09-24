*** Settings ***
Documentation   O desafio consiste em criar um projeto de automação mobile, para um APK Android.

Resource  ../config/appium/appiumDriver.robot
Resource  ../resource/pages/formTestPage.robot
Resource  ../resource/pages/listaTestPage.robot
Resource  ../config/hook/hookCenarios.robot

# Executa a KW antes de cada testcase
Test Setup      Open Test Application
# Executa a KW depois de cada testcase
Test Teardown   Close Test Application

*** Test Cases ***
Deve selecionar duas techs mais usadas no seu dia a dia
    [Tags]    selecionaTechs
    Realiza login    Bem-vindo ao seu desafio!
    Acessar o menu
    Acessa opção Form
    Selecionar Techs
