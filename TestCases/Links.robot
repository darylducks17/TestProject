*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demo.guru99.com/selenium/newtours/
${Browser}    Edge

*** Test Cases ***
Get All Links
    Open Browser    ${URL}    ${Browser}
    #counting the number of link of webpage
    ${AllLinksCount}     Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}
    #Close Browser

    @{LinkItems}    Create List  
    #number of links - maps xpath along with index   
    FOR    ${i}    IN RANGE    1    ${AllLinksCount}+1
        ${LinkText}=    Get Text    xpath:(//a)[${i}]
        Log To Console   ${LinkText}
    END
    Close Browser