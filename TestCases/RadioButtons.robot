*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Edge
${URL}    https://demo.seleniumeasy.com/basic-radiobutton-demo.html
${URL1}   https://demo.seleniumeasy.com/basic-checkbox-demo.html

*** Keywords ***


*** Test Cases ***
Testing Radio Buttons
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    #Sets the delaty that is waited after each Selenium command
    Set Selenium Speed    2
    
    #Selecting Radio Buttons --> name  value
    Select Radio Button    gender   Male
    Select Radio Button    ageGroup    0 - 5
   
    Close Browser

Testing Check Boxes
    Open Browser    ${URL1}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    2
    
    #Selecting Check Box --> pass id or name or xpath
    Select Checkbox    xpath://*[@id="easycont"]/div/div[2]/div[2]/div[2]/div[1]/label/input
    
    Unselect Checkbox    xpath://*[@id="easycont"]/div/div[2]/div[2]/div[2]/div[1]/label/input
    
    Close Browser





    