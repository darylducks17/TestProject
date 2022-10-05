*** Settings ***
Resource    ../Resources/Resources.robot
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.countries-ofthe-world.com/flags-of-the-world.html
${Browser}    Edge

*** Test Cases ***
Scrolling Test    
    Open Browser   ${URL}    ${Browser}
    Maximize Browser Window
    Speed
    
    #Scrolling to specified pixel
    Execute Javascript    window.scrollTo(0,2500)
    #Scrolling until element 
    Scroll Element Into View    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[111]/td[1]/img
    #Scrolling until end of page
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    #Scrolling until top of page
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)
    
    Close Browser