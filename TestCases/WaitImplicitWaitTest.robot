*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
RegistrationTest
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    # implicit wait for every element that follows after IF NEEDED
    Set Browser Implicit Wait    10 seconds
    Select Radio Button    Gender    F
    Input Text    id:FirstName    Gergana
    Input Text    id:LastName    Tsirkova
    Input Text    id:Email   gergana.tsirkova@gmail.com
    Input Text    id:Password   Test123
    Input Text    id:ConfirmPassword   Test123
