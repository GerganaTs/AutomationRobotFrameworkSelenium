*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
RegistrationTest
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    # wait until this text(Register) is loaded - if text is never presented maximum time is 5 seconds if we want more time we add above "Set Selenium Timeout 10 seconds"
    Wait Until Page Contains    Register
    Select Radio Button    Gender    F
    Input Text    id:FirstName    Gergana
    Input Text    id:LastName    Tsirkova
    Input Text    id:Email   gergana.tsirkova@gmail.com
    Input Text    id:Password   Test123
    Input Text    id:ConfirmPassword   Test123
