*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.co.uk/
${Browser}    Edge

*** Keywords ***
Speed
    Set Selenium Speed    1

*** Test Cases ***
Navigation Test
    
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Speed

    ${loc}=    Get Location
    Log To Console    ${loc}   

    Go To    https://www.bing.com/
    ${loc}=    Get Location
    Log To Console    ${loc}

    Go Back
    ${loc}=    Get Location
    Log To Console    ${loc}
    
    Close Browser
