*** Settings ***
Library    AppiumLibrary

*** Variables ***

${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
#${ANDROID_PLATFORM_VERSION}   8.1
${DEVICE_NAME}                Android Emulator
${APP_PACKAGE}                com.wdiodemoapp
${APP_ACTIVITY}               com.wdiodemoapp.MainActivity
${APPIUM_SERVER}              http://127.0.0.1:4723

*** Keywords ***
Open Test Application
    Open Application
    ...    ${APPIUM_SERVER}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    #...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}


