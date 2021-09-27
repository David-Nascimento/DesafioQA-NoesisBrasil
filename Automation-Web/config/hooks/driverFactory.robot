*** Settings ***
Documentation    Aqui tem toda configuração do @Before e @After do robot

Library          SeleniumLibrary

*** Variable ***
${URL}           https://www.unimed.coop.br
${BROWSER}       chrome

# Comando para executar em headless
${OPTIONS}      add_argument("--disable-debv-shm-usage"); add_argument("--headless"); add_argument("--no-sandbox")
# passar parametro options=${OPTIONS}

*** Keywords ***
Open session
    Open browser     ${URL}    ${BROWSER}

Close session
    Close browser
