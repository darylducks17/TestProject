*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://demo.seleniumeasy.com/javascript-alert-box-demo.html
${Browser}    Edge

*** Keywords ***
Open Page
    Open Browser    ${URL}    ${Browser}
Time 
    Set Selenium Speed    1

*** Test Cases ***
Handling Alerts
    Open Page
    Maximize Browser Window
    Time
    Click Element    xpath://*[@id="easycont"]/div/div[2]/div[2]/div[2]/button
    #Handle Alert    Accept
    Handle Alert    Dismiss
    #Handle Alert    Leave
    #Alert Should Be Present    Press a button! 
    #Alert Should Not Be Present    Press a buttion! 
    Close Browser

Handling Frames
    #Open Frames Page