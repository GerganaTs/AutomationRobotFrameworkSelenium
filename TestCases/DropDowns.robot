*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/
${homePageTitle}    nopCommerce demo store
${registerPageTitle}    nopCommerce demo store. Register

*** Test Cases ***
TestDropdowns
    OpenBrowserAndMaximizeWindow
    OpenRegisterPage
    Select From List By Label    DateOfBirthDay    18
    Sleep    2
    Select From List By Index    DateOfBirthDay    0
    Sleep    2
    Select From List By Value    DateOfBirthDay    5

*** Keywords ***

OpenBrowserAndMaximizeWindow
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

OpenRegisterPage
    Title Should Be    ${homePageTitle}
    Click Link    //a[@class='ico-register']
    Title Should Be    ${registerPageTitle}