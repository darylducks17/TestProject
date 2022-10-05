*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot

*** Variables ***
${URL}    https://demo.guru99.com/selenium/newtours/
${Browser}    Edge

*** Keywords ***
Speed 
    Set Selenium Speed    1
*** Test Cases ***
User Keywords
    Speed
    ${PageTitle}=    Launch Browser    ${URL}    ${Browser}
    Log To Console    ${PageTitle}
    Input Text    xpath:/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[2]/td[2]/input    mercury
    Input Text    xpath:/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[3]/td[2]/input    mercury
    Close Browser

