*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}    https://demo.guru99.com/test/newtours/
${browser}    chrome

*** Test Cases ***

TestCase1
    LaunchBrowserNoArguments
    Input Text    name:userName    Gergana
    Input Text    name:password    Test123
    LaunchBrowserWithArguments    ${url}      ${browser}


