# Every section is not necessary for each test case

*** Settings ***
# Adding all the libraries
Library    SeleniumLibrary

*** Variables ***
# Define variables commonly used in every testcase 
${Browser}    Edge
${URL}    https://demo.nopcommerce.com/

*** Keywords ***
# Create and define keywords here
Login To Application
    Click Link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    Input Text    id:Email    pavanoltraining@gmail.com
    Input Text    id:Password   Test@123
    Click Element    xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
    

*** Test Cases ***
# Write multiple test cases 
LoginTest 
    Open Browser    ${URL}    ${Browser}  
    Login To Application
    Close Browser 
    



