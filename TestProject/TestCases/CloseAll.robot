*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    https://demowebshop.tricentis.com/register
${URL1}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${Browser}    Edge

*** Keywords ***
Open Page
    Open Browser    ${URL}    ${Browser}

Open Another Page
    Open Browser    ${URL1}    ${Browser}

*** Test Cases ***
TestCase
    Open Page
    Maximize Browser Window

    Open Another Page
    Maximize Browser Window
    
    #Only closes the recent browser
    #Close Browser
    Close All Browsers
    

