*** Settings ***
Documentation    Keywords for automation
Library          AppiumLibrary
Resource         ../Data/Test_Data.robot
Resource         ../Data/Android_Locator.robot
Resource    ../Config/Global_Config.robot


*** Keywords ***

Sign-up
    [Documentation]    Test step for sign up
    [Arguments]    ${phone_num}    ${name1}    ${name2}    ${email}    ${password}
    Click Element    ${backbutton}
    Sleep    10s
    Click Element    ${profilebutton}  
    Sleep    5s
    Input Text    ${phonefield}        ${phone_num}
    Sleep    5s
    Click Element    ${continuebutton}
    Sleep    5s
    Input Text    ${firstname}        ${name1}
    Sleep    5s
    Input Text    ${lastname}    ${name2}
    Sleep    5s
    Input Text    ${emailid}    ${email}
    Sleep    10s
    Input Text    ${passwordfield}    ${password}
    Sleep    5s
