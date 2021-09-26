# Configuração dos cenários web

### Este é um Projeto desenvolvido com o framework Robot utilizando os recursos abaixo:

* Python 3.9.7
* Pip 21.2.4
* Robot Framework 4.1.1
* Robot Framework-Seleniumlibrary 5.1.3
* Robot Framework-Selenium2library 3.0.0
* Atom 1.58.0 x64
* Cucumber
* Padrão Page Objects
<!--te-->

##### Avisos Importantes:
Os teste foram validados no Google Chrome e Mozilla Firefox, e eu utilizei o WebDriver nas Variáveis de Ambiente do meu sistema. Caso você não possua o mesmo setup, eu disponibilizei as versões mais recentes do ChromeDriver e GeckoDriver para Windows dentro do projeto:

````
Automation-Web/config/drivers
````
As versões dos drivers são: \
Chromedriver -> 93.0.4577.63 \
Geckodriver -> 0.27.0

### Planejamento dos Testes
Mapeando Cenários de Teste
````
1 - No site https://www.unimed.coop.br/ validar a seguinte sequência de ações:
    • Acessar Guia Médico
    • Realizar uma pesquisa de médicos no Rio de Janeiro.
    • Validar a apresentação dos resultados com a Especialidade e Cidade

2 - No mesmo site, validar:
    • Acessar Guia Médico
    • Realizar uma pesquisa de médicos no Rio de Janeiro.
    • Validar nas páginas 1, 2, e 3 do resultado, NÃO apresentação do resultado com cidade São Paulo  
````

###### Criando as Features de Teste
Tendo em mãos os Cenários de cada fluxos de teste (fluxo base e alternativos), comecei a escrita das features em ***gherkin*** tendo como base o ***BDD***:
````robotframework
Cenario 01: Deve validar a apresentação dos resultados com a Especialidade e Cidade
    Dado      que eu esteja na Home Page da Unimed
    E         clicar em "Consulte agora"
    E         acessar a aba de "Busca detalhada"
    E         pesquisar pelo estado do "Rio de Janeiro"
    Quando    eu efetuar a buscar pelo estado selecionado
    Então     devo validar a apresentação dos resultados com a Especialidade e Cidade
````

````robotframework
Cenario 02: Deve varrer as abas entre 1 e 3 e validar que não apresente o resultado da cidade de São Paulo
    Dado      que eu esteja na Home Page da Unimed
    E         clicar em "Consulte agora"
    E         acessar a aba de "Busca detalhada"
    E         pesquisar um médico no estado do "Rio de Janeiro"
    Quando    eu efetuar a buscar pelo estado selecionado
    Então     devo realizar a verificações entre as paginas que não haja resultado da cidade de "São Paulo"
````

````robotframework
Cenario 03: Deve Pesquisar Médico do Estado do Rio de Janeiro em São Paulo
    Dado      que eu esteja na Home Page da Unimed
    E         clicar em "Consulte agora"
    E         acessar a aba de "Busca detalhada"
    E         pesquisar um médico no estado do "Rio de Janeiro"
    Quando    eu efetuar a buscar pelo estado selecionado na cidade de São Paulo
    Então     devo verificar que a busca não teve retorno de médicos
````

Seguindo sempre a premissa da documentação -> [CENARIO](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/blob/Develop/Automation-Web/documents/Desafio%201.pdf)

### Execução dos Testes de cada cenario

````sh
    robot -d ./logs/cenario01 -t "Cenario 01: Deve validar a apresentação dos resultados com a Especialidade e Cidade" tests
````

````sh
    robot -d ./logs/cenario02 -t "Cenario 02: Deve varrer as abas entre 1 e 3 e validar que não apresente o resultado da cidade de São Paulo" tests
````

````sh
    robot -d ./logs/cenario03 -t "Cenario 03: Deve Pesquisar Médico do Estado do Rio de Janeiro em São Paulo" tests
````

Pontos importantes sobre a execução: \
O Primeiro comando ***Robot*** significa a chamada teste. \
O parametro ***-d ./logs/cenario03*** informa onde eu salvei os logs de execução dos meus cenários. \
O parametro ***"Cenario 01: Deve validar a apresentação dos resultados com a Especialidade e Cidade"*** é o cenário explicito. \
O parametro **tests** é pasta onde está os meus casos de teste.

#### Para visualizar os logs de execução vou deixar um link abaixo com cada pasta seguindo a ordem dos Casos de Testes.

[Cenario 01](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-Web/logs/cenario01) \
[Cenario 02](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-Web/logs/cenario02) \
[Cenario 03](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/tree/Develop/Automation-Web/logs/cenario03)



[GitFlow](https://github.com/David-Nascimento/DesafioQA-NoesisBrasil/commits/Develop/Automation-Web)
