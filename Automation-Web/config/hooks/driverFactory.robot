*** Settings ***
Documentation    Aqui tem toda configuração do @Before e @After do robot

Library          SeleniumLibrary

*** Variable ***
${URL}           https://www.unimed.coop.br
${BROWSER}       chrome


*** Keywords ***
Open session
    Open browser     ${URL}    ${BROWSER}

Close session
    Close browser
