*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}    Edge

*** Keywords ***

*** Test Cases ***
Login To Website
    Open Browser    ${URL}    ${Browser}
    Input Text    //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input    Admin
    Input Text    