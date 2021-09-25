# Configuração do ambiente Mobile

### Este é um Projeto desenvolvido com o framework Robot utilizando os recursos abaixo:
* Python 3.9.7
* Pip 21.2.4
* Robot Framework 4.1.1
* RequestLibrary - 0.9.2
* Atom 1.58.0 x64

## Instalando o AppiumLibrary
````
pip install robotframework-requests
````

### Planejamento dos Testes
Mapeando Cenários de Teste

````
1 - No endpoint validar o response para:

   • Título do Filme 
   • Ano do Filme 
   • Idioma do filme 
    
2 - No endpoint validar o response para: 

   • Busca filme inexistent
   
````

#### Criando os Cenarios de Teste
Utilizei o Design Patterns para o projeto, segue um arquivo de exemplo:
````
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

Ano do Filme
  Confere Status Code   200
  Confere Reason    OK
  Confere se retorna 25 Filmes
  Confere ano do Filme    2010

Idioma do filme
  Confere Status Code   200
  Confere Reason    OK
  Confere se retorna 25 Filmes
  Confere Idioma do Filme   English, French
````

Seguindo sempre a premissa da documentação -> [CENARIO](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/blob/Develop/Automation-API/documents/Desafio%202.pdf)

Utilizando Argumentos e variaveis Globais para validar as requisições.

### Execução dos Testes de cada cenario
````
robot -d ./logs tests/TS_Caso01.robot
````

#### Para visualizar os logs de execução vou deixar um link abaixo com cada pasta seguindo a ordem dos Casos de Testes.
[CASO_01](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-API/logs/TituloFilme)
[CASO_02](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-API/logs/FilmeNaoExiste)

[GITFLOW](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/commits/Develop/Automation-API)