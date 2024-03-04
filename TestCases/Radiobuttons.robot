*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${baseUrl}    https://demo.nopcommerce.com/

*** Test Cases ***
Testing RadioButtons and Checkboxes
    OpenBrowserAndMaximizeWindow
    GoToRegisterPage
    Page Should Contain Radio Button    Gender    M
    Page Should Contain Radio Button    Gender    F
    Select Radio Button    Gender    F

    Page Should Contain Checkbox    Newsletter    true
    Unselect Checkbox    Newsletter
    Page Should Contain Checkbox    Newsletter    false
    Select Checkbox    Newsletter

*** Keywords ***

OpenBrowserAndMaximizeWindow
    Open Browser    ${baseUrl}    ${browser}
    Maximize Browser Window

GoToRegisterPage
    Click Link    //a[@class='ico-register']
    Title Should Be    nopCommerce demo store. Register