*** Settings ***
Documentation   Aqui fica toda configuração dos capabilities do Appium

Library         AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
# ${ANDROID_APP}                ${CURDIR}\\app\\NoesisQuaChallenge.apk
${ANDROID_APP}                C:\\Users\\David\\Downloads\\Desafio Tecnico Noesis\\NoesisQuaChallenge.apk
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   %{ANDROID_PLATFORM_VERSION=10}
${ANDROID_DEVICE_NAME}        Pixel 3a

*** Keywords ***
Open Test Application
  Set Appium Timeout    5
  Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  app=${ANDROID_APP}   deviceName=${ANDROID_DEVICE_NAME}

Close Test Application
    Close Application
