*** Settings ***
Documentation   Aqui fica todas as variaveis dos cenarios

*** Variables ***
${MENSAGEM_LOGIN}     xpath=//*/android.view.ViewGroup[2]/android.widget.TextView[1]
${LOGIN}              xpath=//*/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.EditText
${SENHA}              xpath=//*/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.widget.EditText
${SUBMIT}             xpath=//*/android.view.ViewGroup[2]/android.view.ViewGroup[3]/android.widget.Button
${ALERTA_MENSAGEM}    id=android:id/alertTitle
