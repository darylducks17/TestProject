*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    Alerts.robot

*** Variables ***
${URl}    https://demo.guru99.com/selenium/newtours/index.php
#headlessfirefox/chrome- allows the tests to run in the backend
#as a user you cannot see the workflow or the browser
${BROWSER}    Edge  
${USER}    tutorial
${PASS}    tutorial

*** Test Cases ***
Login Test
    Speed
    Launch Browser    ${URL}    ${BROWSER}
    Input Username    ${USER}
    Input Pass   ${PASS}
    Click Login Button
    #Verifying Successful Login
    Exit Browser


