*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${baseUrl}    https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    OpenBrowserAndMaximizeWindow
    loginToApplication
    Close Browser

*** Keywords ***

OpenBrowserAndMaximizeWindow
    Open Browser    ${baseUrl}    ${browser}
    Maximize Browser Window

loginToApplication
    Click Link    xpath://a[@class='ico-login']
    Input Text    id:Email     gergana.tsirkova@gmail.com
    Input Text    id:Password    Test1234
    Click Element    xpath://button[normalize-space()='Log in']