*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F  
${BROWSER}    Edge


*** Keywords ***
Launch Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window

Exit Browser
    Close All Browsers

Go To Login Page
    Go To    ${LOGIN URL}

Input Email 
    [Arguments]    ${email}
    Input Text    xpath://*[@id="Email"]    ${email}

Input PSWD
    [Arguments]    ${password}
    Input Text    xpath://*[@id="Password"]    ${password}

Click Login 
    Click Element    xpath:/html/body/div[6]/div/div/div/div/div[2]/div[1]/div/form/div[3]/button

Click Logout
    Click Link    Logout

Error Message Should Be Visible
    Page Should Contain    Login was unsuccessful

Dashboard Page Should Be Visible
    Page Should Contain    Dashboard