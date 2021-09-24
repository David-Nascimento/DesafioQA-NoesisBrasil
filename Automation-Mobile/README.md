# Configuração do ambiente Mobile

### Este é um Projeto desenvolvido com o framework Robot utilizando os recursos abaixo:
* Python 3.9.7
* Pip 21.2.4
* Robot Framework 4.1.1
* AppiumLibrary - 1.2.0
* Atom 1.58.0 x64
* Design Patterns

### Appium

Utilizei a versão mais estavel do Appium, segue o link para download -> [APPIUM](https://github.com/appium/appium-desktop/releases/tag/v1.20.2)

### Instalando o AppiumLibrary
````
pip install --upgrade robotframework-appiumlibrary
````

Depois de instalado a library do appium, vamos aos cenarios de testes e criação das Keywords.

### Planejamento dos Testes
Mapeando Cenários de Teste

````
1 – Criar uma classe de teste chamada loginTest, para validar os seguintes cenários: 
    a) Login e senha incorretos, validando a mensagem: “Usuario e/ou senha incorreto.”  
    b) Acesso efetuado com sucesso.  Login: admin e Senha: admin  
    
2 – Criar uma classe de teste chamada listaTest, para validar os seguintes cenários:  
    • Acessar o menu; 
    • Acessar a opção Lista; 
    • Realizar uma busca na barra de pesquisa e colocar um assert com a busca realizada.  
    
3 – Criar uma classe de teste chamada formTest, para validar os seguintes cenários: 
    • Acessar o menu; •
     Acessar a opção Form; 
     • Marcar duas opções a seu gosto. 
````


#### Criando os Cenarios de Teste
Utilizei o Design Patterns para o projeto, segue um arquivo de exemplo:
````
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
````

Seguindo sempre a premissa da documentação -> [CENARIO](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/blob/main/Automation-Mobile/documents/Desafio%204.pdf)

### Execução dos Testes de cada cenario
````
robot -d ./logs -i loginSucesso tests
````

Pontos importantes sobre a execução:    \
Os Cenarios estão dividos por **Tags**, nesse caso para executar devemos passar o parametro **-i** antes da **Tag**.

#### Para visualizar os logs de execução vou deixar um link abaixo com cada pasta seguindo a ordem dos Casos de Testes.
[loginSucesso](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-Mobile/logs/loginSucesso) \
[loginInvalido](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-Mobile/logs/loginInvalido)   \
[senhaInvalida](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-Mobile/logs/senhaInvalida)   \
[realizaBusca](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-Mobile/logs/realizaBusca) \
[selecionaTechs](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-Mobile/logs/selecionaTechs)

[GitFlow](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/commits/Develop)