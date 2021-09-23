*** Settings ***
Documentation   Aqui fica todas as variaveis dos cenarios

*** Variables ***
${MENSAGEM_LOGIN}     xpath=//*/android.view.ViewGroup[2]/android.widget.TextView[1]
${LOGIN}              xpath=//*/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.EditText
${SENHA}              xpath=//*/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.widget.EditText
${SUBMIT}             xpath=//*/android.view.ViewGroup[2]/android.view.ViewGroup[3]/android.widget.Button
${ALERTA_MENSAGEM}    id=android:id/alertTitle

${BOAS_VINDAS}        xpath=//*/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.TextView[1]
${NAV_MENU}           xpath=//*/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView

## Cenario 02
${NOME_PESSOA}        xpath=//*/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.widget.TextView[1]
${NAV_LISTA}          xpath=//*/android.view.ViewGroup[1]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]

${BUSCA_PESSOA}       xpath=//*/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText
${RESULTADO_BUSCA}    xpath=//*/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
# Odara Sales
