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
    Click Element    xpath=//android.widget.Button[@content-desc="Profile, tab, 4 of 4"]/android.widget.TextView
    Sleep    5s
    Input Text    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText    ${phone_num}
    Sleep    5s
    Click Element    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView
    Sleep    5s
    Input Text    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText    ${name1}
    Sleep    5s
    Input Text    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText    ${name2}
    Sleep    5s
    Input Text    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText    ${email}
    Sleep    5s
    Input Text    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.EditText    ${password}
    Sleep    5s
    Click Element    xpath=//android.widget.CheckBox[@resource-id="checkbox"]/android.widget.ImageView
    Sleep    5s
    Click Element    xpath=//android.widget.CheckBox[@resource-id="checkbox"]/android.widget.ImageView
    Sleep    5s
    Scroll Element Into View    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[5]/android.view.ViewGroup/android.widget.TextView
    Sleep    5s
    Click Element    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[5]/android.view.ViewGroup/android.widget.TextView
    Sleep    5s


Sign-In
    App_Launch
    Sign-up    ${num}    ${nam}    ${name}    ${ema}    ${pas}