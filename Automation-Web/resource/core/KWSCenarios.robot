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