*** Settings ***
Documentation               Aqui fica todos os elementos dos cenarios

*** Variable ***
${BOTAO_CONSULTA}           id=fragment-oimm-link
${BOTAO_BUSCA_DETALHADA}    id=react-tabs-2

## Titulo da pagina de guia médio
${HEADING_TITLE}            xpath=//*/div/h1[@class="Heading--title"]
${HEADING_SUB_tITLE}        xpath=//*/div/h2[@class="Heading--sub-title"]

${BOTAO_BUSCA_DETALHADA}    id=react-tabs-2
${SELECT_ESTADO}            xpath=//div[@id="province-input"]/div/div
${RIO}                      id=react-select-4-option-18

${BOTAO_PESQUISAR}          xpath=//*/button[@type="submit"][text()="Pesquisar"]

${TEXTO_BUSCA}              xpath=//*/span[@class="Text TotalFoundProviders"]

${LOCALIZACAO}              xpath=//*/div[@class="ProviderAddressColumn col-lg-7"]

## Deve Selecionar Médico do estado do Rio de Janeiro
${SELECIONA_MEDICO}         xpath=//*/input[@placeholder="Nome do médico ou prestador"]
${MAIS_RESULTADOS}          xpath=//*[@id="gm-v3-root"]/div/div[2]/div[2]/div[1]/div[3]/button
${MENSAGEM_RESULTADO}       xpath=//*[@id="gm-v3-root"]/div/div[2]/div[2]/div[1]/div[3]/span

${LIMPAR_PESQUISA}          xpath=//*[@id="province-input"]/div/div[2]/div[1]

${PESQUISAR_ESTADO}         xpath=//div[@id='react-select-9-option-24']/span

${DROP_ESTADO}              xpath=//*[@id="province-input"]/div/div[2]

${BOTAO_FILTRAR}            xpath=//*[@id="gm-v3-root"]/div/div[2]/div[1]/form/button

${SAO_PAULO}                xpath=xpath=//div[25]/span

${MENSAGEM_MEDICO_NAO_EXISTE}   xpath=//*[@id="NoContentResultList"]
