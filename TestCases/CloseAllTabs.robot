*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
CloseAllTabsTests
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window

    Open Browser    http://www.automationpractice.pl/index.php    chrome
    Maximize Browser Window

    #Close Browser
    Close All Browsers