*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Broswer}    Edge
${URL}    https://demo.nopcommerce.com/

*** Keywords ***

*** Test Cases ***
Testing Input Box
    Open Browser    ${URL}    ${Broswer}
    Maximize Browser Window
    #Verifying Tile of Page
    Title Should Be    nopCommerce demo store
    Click Link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    ${"email_txt"}    set variable    id:Email
    #Visibility Status
    Element Should Be Visible       ${"email_txt"}
    #Enabled Status
    Element Should Be Enabled    ${"email_txt"}
    #Provide Value
    Input Text    ${"email_txt"}    JohnDavid@gmail.com
    Sleep    5
    #Clearing Vlaue
    Clear Element Text    ${"email_txt"}
    Sleep    3
    Close Browser