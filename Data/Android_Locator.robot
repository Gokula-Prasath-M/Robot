*** Settings ***
Documentation    Android Locators
Library          AppiumLibrary


*** Variables ***

${backbutton}    xpath=//android.widget.TextView[@resource-id="iconIcon"]
${profilebutton}    xpath=//android.widget.Button[@content-desc="Profile, tab, 4 of 4"]/android.widget.TextView
${phonefield}    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText
${firstname}    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText
${lastname}    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText
${emailid}    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText
${passwordfield}    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.EditText
${continuebutton}    xpath=//android.view.ViewGroup[@content-desc="PROFILE_SCREEN_SIGN_IN"]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView
