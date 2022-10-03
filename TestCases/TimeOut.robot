*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Edge
${URL}    https://demowebshop.tricentis.com/register

*** Keywords ***
Open Page
    Open Browser    ${URL}    ${Browser}

#Apply the delay for every step in Test Case
Speed 
    Set Selenium Speed    1
#Used to verify something on the webpage
#Will wait for the statement for 10 seconds
Timeout 
    Set Selenium Timeout    10

#Will keep looking for the 1st element below for 10 seconds before executing the script
#Applicable for every statement in script
Implicit Time
    Set Selenium Implicit Wait    10

*** Test Cases ***
Registration Test
    Open Page 
    Maximize Browser Window
    #Speed
    
    #Timeout
    
    #Will wait for 5 seconds after that it will either show Pass/Fail
    #Default timeout
    #Wait Until Page Contains    Registration
    
    Select Radio Button    Gender    M
    
    Implicit Time
    
    Input Text    xpath://*[@id="FirstName"]    David
    Input Text    xpath://*[@id="LastName"]    John
    Input Text    xpath://*[@id="Email"]    anhc@gmail.com
    Input Text    xpath://*[@id="Password"]    davidjohn
    Input Text    xpath://*[@id="ConfirmPassword"]    davidjohn
    Close Browser


