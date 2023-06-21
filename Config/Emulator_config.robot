*** Settings ***
Documentation    Emulator test configuration file
Library          AppiumLibrary
Library          Process
Library          OperatingSystem


*** Variables ***
${REMOTE_URL}         http://0.0.0.0:4723/wd/hub
${PLATFORM_NAME}      Android
${PLATFORM_VERSION}   9
${DEVICE_NAME}        988e10375a354e483930
${Activity_NAME}      com.renterapp.MainActivity
${PACKAGE_NAME}       com.renterapp
${Automation_NAME}    UiAutomator2
${appium}             appium
${app}                /home/circleci/project/Resources/app.apk     
    
*** Keywords ***

App_Launch
    Start Appium
    Open Application    ${REMOTE_URL}   platformName=${PLATFORM_NAME}     deviceName=${DEVICE_NAME}      app=${app}    appActivity=${Activity_NAME}   automationName=${Automation_NAME}
    Quit Application
    Sleep    10s

Start Appium
        ${appium}=      Start Process    appium
        # ${appium}=    Start Process    appium    -a 127.0.0.1-p 4723 --log-timestamp --local-timezone
        Log To Console    ${appium}
        Sleep    5s

Stop Appium
    Remove Application    ${PACKAGE_NAME}  
    Terminate All Processes
    Log To Console    Appium Server Stopped
