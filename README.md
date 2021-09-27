# Desafio QA-Noesis Brasil
#### Neste Desafio foi escolhido o Framework `{{ROBOT FRAMEWORK}}` para a criação dos casos de tests e documentação.


# Objetivo
O Objetivo deste desafio é criar uma automação Front-end, API e Mobile.
onde foram estruturados em pastas distintas,
[WEB](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-Web),  
[MOBILE](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-Mobile) e
[API](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-API)
em cada pasta tem um Readme com descrição de cada projeto e como executar.

# Instalação
Para Instalar o Robot Framework precisamos como pré-requisito o Python, que por preferencia utilizei a versão mais atual.
* Python 3.9.7
* Pip 21.2.4

Instalando o Robot Framework
````sh
pip install robotframework
````
> Robot Framework 4.1.1

# Modelo de escrita usado em cada projeto

### Base WEB
````robotframework
*** Settings ***
Documentation    No site https://www.unimed.coop.br/ validar a seguinte sequência de ações


Resource         ../config/Cucumber/cucumber-PTBr.robot
Resource         ../resource/Pages/cenario_1Page.robot
Resource         ../config/hooks/driverFactory.robot

Test Setup       Open session
Test Teardown    Close session

*** Test Case ***
    [Tags]    cenarioValidaApresentacaoResultados
Cenario 01: Deve validar a apresentação dos resultados com a Especialidade e Cidade
    Dado      que eu esteja na Home Page da Unimed
    E         clicar em "Consulte agora"
    E         acessar a aba de "Busca detalhada"
    E         pesquisar pelo estado do "Rio de Janeiro"
    Quando    eu efetuar a buscar pelo estado selecionado
    Então     devo validar a apresentação dos resultados com a Especialidade e Cidade
````

### Base Mobile
````robotframework
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
### Base API
````robotframework
*** Settings ***
Documentation     Casos de Testes para a API

Resource    ../config/hookApi.robot
Resource    ../resource/routes/omdbapiGet.robot

Suite Setup   Conectar a API

*** Test Cases ***
#No endpoint validar o response para
Titulo do Filme
  Confere Status Code   200
  Confere Reason    OK
  Confere se retorna 25 Filmes
  Confere Titulo do Filme     The Social Network
````

# Estrutura dos pacotes
````
Desafio Noesis/
│
├── Automation-API/
├── Automation-Mobile/
├── Automation-Web/
├── Docs
│   └── DesafioTecnico_AnalistaQA.pdf
├── results
│   └── .gitkeep
├── .gitignore
├── Dockerfile
├── README.md
└── requirements.txt

````

# Configurações da IDE

Utilizei o [ATOM IDE](https://atom.io/) para o desenvolvimento dos testes.
Extensões do ATOM que eu Utilizei

>[language-robot-framework by wingyplus](https://atom.io/packages/language-robot-framework) \
  Essa é a extensão que reconhece a linguagem robot e interpreta os arquivos .robot destacando com cores os itens como variáveis, nome de keywords, seções, etc. \
[autocomplete-robot-framework by gliviu](https://atom.io/packages/autocomplete-robot-framework) \
  Essa é extensão "Intellisense" que sugere e auto completa as keywords. \
[hyperclick-robot-framework by gliviu](https://atom.io/packages/hyperclick-robot-framework) \
  Essa permite o CTRL+click nas keywords e redirecionamento para a implementação da mesma.

# Docker
Docker no Windows:  \
ATENÇÃO: Verifique a versão do seu Windows!!!!!!!!!! \
Windows 10 pro -> você vai instalar o Docker for Windows.

Caso contrário -> instale o Docker ToolBox!!!

> No meu caso estou utilizando o Docker Toolbox.

## Comandos Utilizados

### Criar o build da imagem
````docker
docker build -t noesis_robot .
````

### Consultar as imagens do seu Docker
````docker
docker images
````
### Remover uma imagem criada
````docker
docker rmi noesis_robot
````

### Rodar os testes do Robot Web dentro do container
````docker
docker run --rm --name noesis_robot -v " E:\Projetos\Desafio Noesis\Automation-Web\tests":/opt/robotframework/tests -v " E:\Projetos\Desafio Noesis\results":/opt/robotframework/results noesis_robot:latest robot -d /opt/robotframework/results /opt/robotframework/tests
````
> OBS. Lembrando que para executar em docker precisa alterar o caminho absoluto da pasta de testes e results

### Rodar os testes do Robot API dentro do container
````docker
docker run --rm --name noesis_robot -v " E:\Projetos\Desafio Noesis\Automation-API\tests":/opt/robotframework/tests -v " E:\Projetos\Desafio Noesis\results":/opt/robotframework/results noesis_robot:latest robot -d /opt/robotframework/results /opt/robotframework/tests
````

[gitlab-ci](https://gitlab.com/david_nascimento/DesafioQA-NoesisBrasil/-/pipelines) \
[github.com/David-Nascimento/DesafioQA-NoesisBrasil](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/commits/main)
