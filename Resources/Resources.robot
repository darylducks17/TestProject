
*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Launch Browser
    [Arguments]    ${appURL}    ${appbrowser}
    Open Browser    ${appURL}    ${appbrowser}
    Maximize Browser Window
    ${Title}=    Get Title
    [Return]    ${Title}