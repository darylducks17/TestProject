*** Settings ***
Documentation    Basic example Input text by search and click functions
Library      Browser 

*** Variables ***
${URL}    https://marketsquare.github.io/robotframework-browser/Browser.html
${SEARCH_FIELD}     //*[@id="shortcuts-container"]/div/div[1]/input
${CLICK_BROWSER_KEYWORD}     //*[@id="keyword-shortcuts-container"]/li[7]/a

*** Keywords ***
Open Webpage 
    Open Browser    ${URL} 
Search Keyword 
    Fill Text    ${SEARCH_FIELD}    Download 
Click Keyword
    Click    ${CLICK_BROWSER_KEYWORD}

*** Test Cases *** 
Open Broswer Page 
    Open Webpage 
    Search Keyword 
    Click Keyword