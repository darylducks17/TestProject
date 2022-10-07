*** Settings ***
#Library    SeleniumLibrary

*** Test Cases ***
For Loop
    FOR    ${i}    IN RANGE    1    10
           LOG TO CONSOLE    ${i}
    END

Another For Loop 
    @{items}    Create List    1    2    3    4    5 
    FOR    ${j}    IN    @{items}
        Log To Console    ${j} 
    END

Anotherr For Loop 
    @{items}    Create List    Duck    Chicken    Pig    Cow 
    FOR    ${k}    IN    @{items}
        Log To Console    ${k} 
    END

Anotherrr For Loop 
    @{items}    Create List    1    2    3    4    5 
    FOR    ${l}    IN    @{items}
        Log To Console    ${l}
    Exit For Loop If    ${l} == 3
    END