*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.techlistic.com/p/demo-selenium-practice.html
${Browser}    Edge

*** Test Cases ***
Table Validation 
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    ${Rows}=    Get Element Count    xpath://*[@id="customers"]/tbody/tr
    ${Cols}=    Get Element Count    xpath://*[@id="customers"]/tbody/tr[1]/th 
    Log To Console    ${Rows}
    Log To Console    ${Cols}

    ${Data}=    Get Text    xpath://*[@id="customers"]/tbody/tr[5]/td[1]
    Log To Console    ${Data}
    
    Table Column Should Contain    xpath://*[@id="customers"]    2    Contact
    Table Row Should Contain    xpath://*[@id="customers"]    4   Microsoft
    Table Cell Should Contain    xpath://*[@id="customers"]   5    2    Helen Bennett
    Table Header Should Contain   xpath://*[@id="customers"]     Company
    Close Browser