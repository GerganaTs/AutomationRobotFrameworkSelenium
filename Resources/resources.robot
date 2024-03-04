*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

#User keyword example with NO arguments
LaunchBrowserNoArguments
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${title}=    Get Title

#User keyword example with arguments
LaunchBrowserWithArguments
    [Arguments]    ${appurl}    ${appbrowser}
    ${title}=    Get Title
    RETURN   ${title}