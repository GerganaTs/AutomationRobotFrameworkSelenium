*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Test Cases ***
RegistrationTest
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    Sleep    3
    Select Radio Button    Gender    F
    Input Text    id:FirstName    Gergana
    Input Text    id:LastName    Tsirkova
    Input Text    id:Email   gergana.tsirkova@gmail.com
    Input Text    id:Password   Test123
    Input Text    id:ConfirmPassword   Test123
