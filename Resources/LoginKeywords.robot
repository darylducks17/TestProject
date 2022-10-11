*** Settings ***
Library    SeleniumLibrary
Library    Telnet
Variables    ../PageObjects/Locators.py

*** Keywords ***
Launch Browser
    [Arguments]    ${URL}    ${BROWSER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Input Username
    [Arguments]    ${USERNAME}
    Input Text    ${txt_login_username}    ${USERNAME}

Input Pass
    [Arguments]    ${PASSWORD}
    Input Text    ${txt_login_password}    ${PASSWORD}

Click Login Button
    Click Button    ${login_button}

Verifying Successful Login
    Title Should Be    Find a Flight: Mercury Tours

Exit Browser
    Close All Browsers

Speed 
    Set Selenium Speed    1
