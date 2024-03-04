*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***

TestCaseHandleAlerts
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    
    #Open Alert
    Click Element    //button[@onclick='myFunctionAlert()']
    #Close Alert by accept:
    Handle Alert    accept

    #Open Alert by cancel
    Click Element    //button[@onclick='myFunctionAlert()']
    Handle Alert    dismiss

    #Open Alert by leave
    Click Element    //button[@onclick='myFunctionAlert()']
    Handle Alert    leave

*** Keywords ***

