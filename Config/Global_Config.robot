*** Settings ***
Documentation   Android test configuration file
Library          AppiumLibrary


*** Variables ***
${REMOTE_URL}     http://0.0.0.0:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    11
${DEVICE_NAME}    e8436bf8
${Activity_NAME}        com.renterapp.MainActivity
${PACKAGE_NAME}    com.renterapp
${Automation_NAME}    UiAutomator2
${app}    ../Resources/app-release.apk 

*** Keywords ***

App_Launch
    Open Application    ${REMOTE_URL}   platformName=${PLATFORM_NAME}     deviceName=${DEVICE_NAME}      appPackage=${PACKAGE_NAME}    appActivity=${Activity_NAME}   automationName=${Automation_NAME}    app=${app}
    Sleep    5s
