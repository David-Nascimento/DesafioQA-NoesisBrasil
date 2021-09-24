*** Settings ***
Documentation   Aqui fica todas as variaveis dos cenarios

*** Variables ***
## Cenario 02
${NAV_MENU}           xpath=//*/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView
${NOME_PESSOA}        xpath=//*/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView[1]
${NAV_LISTA}          xpath=//*/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]

${BUSCA_PESSOA}       xpath=//*/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText
# ${RESULTADO_BUSCA}    xpath=//*/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
${RESULTADO_BUSCA}    xpath=//*/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.TextView[1]
# Odara Sales
