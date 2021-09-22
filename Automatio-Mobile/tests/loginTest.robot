*** Settings ***
Documentation   O desafio consiste em criar um projeto de automação mobile, para um APK Android.

Resource  ../config/hook/appiumDriver.robot

Test Setup      Open Test Application
Test Teardown   Close Test Application

*** Test Cases ***

  [Tags]      Cenario_01_SenhaInvalido
Devo acessar o aplicativo e validar a tela de login
Devo efetuar login com senha invalida
Devo Validar mensagem "Usuario e/ou senha incorreto."

  [Tags]      Cenario_01_LoginInvalido
Devo acessar o aplicativo e validar a tela de login
Devo inserir login invalido
Devo Validar mensagem "Usuario e/ou senha incorreto."

  [Tags]      Cenario_01_LoginSucess
Devo acessar o aplicativo e validar a tela de login
Devo inserir credenciais validas
Devo Validar mensagem "Bem-vindo ao seu desafio!"
