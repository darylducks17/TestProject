*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demo.automationtesting.in/Windows.html
${URL1}    https://www.google.com/
${URL2}    https://www.bing.com/
${Browser}    Edge

*** Keywords ***
Speed
    Set Selenium Speed    1

*** Test Cases ***
Tabbed Windows
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Speed

    Click Element    xpath://*[@id="Tabbed"]/a/button
    # can pass name, title or url of page
    Switch Window    title=Selenium
    Click Element    xpath://*[@id="main_navbar"]/ul/li[3]/a 
    Close Browser

#Both tests have to be run separately to pass
Browser Windows
    Speed

    Open Browser    ${URL1}    ${Browser}
    Maximize Browser Window

    Open Browser    ${URL2}    ${Browser}
    Maximize Browser Window
    

    #capturing the title of browser 1
    Switch Browser    1
    ${title}=    Get Title
    Log To Console    ${title}

    #capturing the title of browser 2
    Switch Browser    2
    ${title1}=    Get Title
    Log To Console    ${title1}
    
    Close All Browsers
