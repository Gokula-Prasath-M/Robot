*** Settings ***
Documentation    Test Suite
Library          AppiumLibrary
Resource         ../Keywords/Keywords.robot
Resource         ../Config/Global_Config.robot
Suite Setup    Start Appium
Suite Teardown    Stop Appium

*** Test Cases ***

Testone
    App_Launch