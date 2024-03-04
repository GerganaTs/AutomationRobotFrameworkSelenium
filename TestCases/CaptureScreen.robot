*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***

LogInTest
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    class:oxd-form
    Input Text    css:form input[placeholder='Username']   Admin
    Input Text    css:form input[placeholder='Password']    admin123

    Capture Element Screenshot    xpath://img[@alt='company-branding']    C:/Users/Gergana/PycharmProjects/Automation/Screenshots/logo.png
    Capture Page Screenshot    C:/Users/Gergana/PycharmProjects/Automation/Screenshots/loginPage.png