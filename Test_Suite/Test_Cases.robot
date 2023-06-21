*** Settings ***
Documentation        Test Suite
Library              AppiumLibrary
Resource             ../Data/Android_Locator.robot
Resource             ../Keywords/Keywords.robot
Resource             ../Config/Emulator_config.robot
Resource             ../Data/Test_Data.robot
Suite Setup          Emulator_config.App_Launch
Test Setup           Activate Application    ${PACKAGE_NAME}
Test Teardown        Quit Application    
Suite Teardown       Emulator_config.Stop Appium

*** Test Cases ***

Testone
    [Documentation]    Fist Test case
    Sleep    10s
    Click Element    ${backbutton}
    Sleep    5s
    
    
Testtwo
    [Documentation]    Second Test Case
    Sleep    10s
    Click Element    ${backbutton}
    Sleep    5s
    
