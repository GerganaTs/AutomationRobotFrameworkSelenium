*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***

BrowserNavigationTest
    Open Browser    https://google.com    chrome
    Maximize Browser Window
    ${loc}=    Get Location
    Log To Console    ${loc}

    Go To    https://bing.com
    Maximize Browser Window
    ${loc}=    Get Location
    Log To Console    ${loc}

    Go Back
    ${loc}=   Get Location
    Log To Console    ${loc}