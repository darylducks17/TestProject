*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginResources.robot
Documentation    Testing the Login Page of NOP Commerce

#Starts up with the browser - only happens once 
Suite Setup    Launch Browser

#Only happens after all the test cases have been executed
Suite Teardown    Exit Browser

#Repeating steps for every step in test case will be put as test template
Test Template    Invalid Login

*** Test Cases ***    username          password
Right User Empty Password    admin@yourstore.com    ${EMPTY}
Right User Wrong Password    admin@yourstore.com    xyz
Wrong User Right Password    admn@yourstore.com    admin
Wrong User Empty Password    admn@yourstore.com    ${EMPTY}
Wrong User Wrong Password    admn@yourstore.com    xyz

*** Keywords ***
Invalid Login 
    [Arguments]    ${username}    ${password}
    Go To Login Page
    Input Email    ${username}
    Input PSWD   ${password}
    Click Login
    Error Message Should Be Visible

  