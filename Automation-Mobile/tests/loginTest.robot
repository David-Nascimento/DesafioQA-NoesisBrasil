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
      # [Tags]      senhaInvalida
Deve tentar se autenticar com uma senha invalida
      Valida Tela de Login
      Senha Invalida
      Validar mensagem            Usuario e/ou senha incorreto
#
#   [Tag]      Cenario_01_LoginInvalido
# Deve  acessar o aplicativo e validar a tela de login
# Deve  inserir login invalido
# Devo  Validar mensagem "Usuario e/ou senha incorreto."
#
#   [Tag]      Cenario_01_LoginSucess
# Deve  acessar o aplicativo e validar a tela de login
# Deve  inserir credenciais validas
# Devo  Validar mensagem "Bem-vindo ao seu desafio!"
