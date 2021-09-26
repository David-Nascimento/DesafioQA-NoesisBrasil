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

## Comando Utilizados

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

### Rodar os testes do Robot dentro do container
````docker
docker run --rm --name noesis_robot -v " E:\Projetos\Desafio Noesis\Automation-Web\tests":/opt/robotframework/tests -v " E:\Projetos\Desafio Noesis\results":/opt/robotframework/results noesis_robot:latest robot -d /opt/robotframework/results /opt/robotframework/tests
````

[github.com/David-Nascimento/DesafioQA-NoesisBrasil](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/commits/main)
