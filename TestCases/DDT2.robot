*** Settings ***
Documentation    
Library    SeleniumLibrary
Library    DataDriver    ../TestData/LoginData.xlsx    sheet_name=Sheet1
Resource    ../Resources/LoginResources.robot

Suite Setup    Launch Browser
Suite Teardown    Exit Browser
Test Template    Invalid Login

*** Test Cases ***
Login Test With Excel Using ${email} and ${password}

*** Keywords ***
Invalid Login 
    [Arguments]    ${email}    ${password}
    Go To Login Page
    Input Email    ${email}
    Input PSWD   ${password}
    Click Login
    Error Message Should Be Visible