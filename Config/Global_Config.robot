*** Settings ***
Documentation   Android test configuration file
Library          AppiumLibrary
Library          Process
Library          OperatingSystem


*** Variables ***
${REMOTE_URL}     http://0.0.0.0:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    9
${DEVICE_NAME}    988e10375a354e483930
${Activity_NAME}        com.renterapp.MainActivity
${PACKAGE_NAME}    com.renterapp
${Automation_NAME}    UiAutomator2
${appium}        appium

*** Keywords ***

App_Launch
    Open Application    ${REMOTE_URL}   platformName=${PLATFORM_NAME}     deviceName=${DEVICE_NAME}      appPackage=${PACKAGE_NAME}    appActivity=${Activity_NAME}   automationName=${Automation_NAME}  
    Sleep    10s

Start Appium
        ${appium}=      Start Process    appium
        # ${appium}=    Start Process    appium    -a 127.0.0.1-p 4723 --log-timestamp --local-timezone
        Log To Console    ${appium}
        Sleep    5s

Stop Appium
    Terminate All Processes
    Log To Console    Appium Server Stopped

