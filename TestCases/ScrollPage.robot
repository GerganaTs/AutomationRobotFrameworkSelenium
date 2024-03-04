*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.worldometers.info/geography/how-many-countries-are-there-in-the-world/
${browser}    chrome

*** Test Cases ***
Scroll Page
        Open Browser    ${url}    ${browser}
        Maximize Browser Window
        Wait Until Page Contains Element    class:fc-primary-button
        Click Element    class:fc-primary-button


        #Execute Javascript    window.scrollTo(0,1500)    #Scroll to 1500px
        #Scroll Element Into View    xpath://a[normalize-space()='Vietnam']    #Scroll to given element
        Execute Javascript    window.scrollTo(0,document.body.scrollHeight)     #scroll to the end of the page
        Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)     #scroll to the end of the page