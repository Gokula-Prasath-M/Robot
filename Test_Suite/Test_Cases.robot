*** Settings ***
Documentation    Test Suite
Library          AppiumLibrary
Resource    ../Data/Android_Locator.robot
Resource         ../Keywords/Keywords.robot
Resource         ../Config/Global_Config.robot
Resource         ../Data/Test_Data.robot
Suite Setup    Start Appium
Suite Teardown    Stop Appium

*** Test Cases ***

Testone
    App_Launch
    Sign-up    ${phno}    ${nam1}    ${nam2}    ${ema}    ${pass}
    

    
