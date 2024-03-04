*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${baseUrl}    https://demo.nopcommerce.com/

*** Test Cases ***

TestInputField
    OpenBrowserAndMaximizeWindow
    Title Should Be    nopCommerce demo store
    GoToLoginPage
    Title Should Be    nopCommerce demo store. Login

    ${"email_txt"}    Set Variable    id:Email

    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}
    
    Input Text    ${"email_txt"}    gergana.tsirkova@gmail.com
    Sleep    5
    Clear Element Text    ${"email_txt"}
    Sleep    3
    Close Browser

*** Keywords ***

OpenBrowserAndMaximizeWindow
    Open Browser    ${baseUrl}    ${browser}
    Maximize Browser Window

GoToLoginPage
    Click Link    xpath://a[@class='ico-login']