*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Edge
${URL}    https://demo.seleniumeasy.com/basic-select-dropdown-demo.html

*** Keywords ***
Open Page
    Open Browser    ${URL}    ${Browser}
Speed
    Set Selenium Speed    2

*** Test Cases ***
Handling Drop Down
    Open Page
    Maximize Browser Window
    Speed

    #Select From List By Value    Monday
    Select From List By Label    select-demo    Sunday
    Select From List By Index    select-demo    6
    #Select From List By Value    select-demo    Monday
    Close Browser

Handling List Boxes
    Open Page
    Maximize Browser Window
    Speed

    Select From List By Label    multi-select    New Jersey
    Select From List By Label    multi-select    New York
    Unselect From List By Label    multi-select    New Jersey
    Close Browser