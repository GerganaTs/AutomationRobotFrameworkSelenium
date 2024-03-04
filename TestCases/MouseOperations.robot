*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***

MultipleBrowsersSwitch
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize Browser Window

    # Open context Menu simulates the right click action
    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
    Sleep    3



    Go To      https://testautomationpractice.blogspot.com/
    Maximize Browser Window

    # Double click action
    Double Click Element        //button[normalize-space()='Copy Text']
    Sleep    3

    Go To      http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window

    # Drag and Drop
    Drag And Drop    id:box6    id:box106
    Sleep    3
    Close Browser