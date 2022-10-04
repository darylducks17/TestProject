*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://swisnl.github.io/jQuery-contextMenu/demo.html
${URL1}    https://demoqa.com/buttons
${URL2}    https://demo.seleniumeasy.com/drag-and-drop-demo.html
${Browser}    Edge

*** Keywords ***
Speed
    Set Selenium Speed    1

*** Test Cases ***
Mouse Actions
#right click action/context menu
    Open Browser    ${URL}    ${Browser}
    Speed
    Maximize Browser Window
    Open Context Menu    xpath: /html/body/div/section/div/div/div/p/span

    #double click action
    Go To    ${URL1}
    Double Click Element    xpath://*[@id="doubleClickBtn"]
    
    #drag and drop
    Go to    ${URL2}
    Drag And Drop    xpath://*[@id="todrag"]/span[1]    xpath://*[@id="mydropzone"]
    Close Browser