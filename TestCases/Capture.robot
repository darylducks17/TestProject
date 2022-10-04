*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
${Browser}    Edge

*** Keywords ***
Speed 
    Set Selenium Speed    1

*** Test Cases ***
Login To Website
    Open Browser    ${URL}    ${Browser}
    Speed
    # Anything commented = not working on this website
    #Input Text    name:username    Admin
    #Input Text    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input   admin123

    #Can capture screenshot of most elements
    #Capture Element Screenshot    xpath: //*[@id="app"]/div[1]/div/div[1]/div/div[1]    H:/TestProject/ScreenShots/Logo.png
    Maximize Browser Window
    Capture Page Screenshot    H:/TestProject/ScreenShots/Login To Website.png
    Close Browser
