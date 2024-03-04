*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***

MultipleBrowsersSwitch
    Open Browser    https://google.com    chrome
    Maximize Browser Window

    Sleep    3

    Open Browser    https://bing.com    chrome
    Maximize Browser Window
    
    Switch Browser    1
    ${title}=    Get Title
    Log To Console    ${title}

    Sleep    2

    Switch Browser    2
    ${title}=    Get Title
    Log To Console    ${title}

    Close All Browsers