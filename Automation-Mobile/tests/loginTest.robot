*** Settings ***
Documentation   O desafio consiste em criar um projeto de automação mobile, para um APK Android.

Resource  ../config/appium/appiumDriver.robot
Resource  ../resource/pages/loginTestPage.robot
Resource  ../config/hook/hookCenarios.robot

# Executa a KW antes de cada testcase
Test Setup      Open Test Application
# Executa a KW depois de cada testcase
Test Teardown   Close Test Application

*** Test Cases ***

Deve tentar se autenticar com uma senha invalida
      [Tags]      senhaInvalida
      Valida Tela de Login
      Senha Invalida
      Validar mensagem            Usuario e/ou senha incorreto

Deve acessar o aplicativo e validar a tela de login
      [Tags]       loginInvalido
      Valida Tela de Login
      login invalido
      Validar mensagem            Usuario e/ou senha incorreto

Deve acessar o aplicativo e validar a tela de login
      [Tags]        loginSucesso
      Valida Tela de Login
      inserir credenciais validas
      Validar mensagem login            Bem-vindo ao seu desafio!
