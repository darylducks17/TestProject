*** Test Cases ***
TC1 Login Test    
    [Tags]    Login
    Log To Console    This is a login test

TC2 Logout Test
    [Tags]    Logout
    Log To Console    This is a logout test

# command to run tests with tags 
#robot -d Results --include=Login TestCases\Tags.robot

#-i = inclusion
#-e = exclude
#robot -d Results -i Login -i Logout TestCases\Tags.robot


