*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.worldometers.info/geography/how-many-countries-are-there-in-the-world/
${browser}    chrome

*** Test Cases ***
ForLoopTest1
        FOR    ${i}    IN RANGE    0    10  #if single space will be brint on 1 line; if 2 spaces in new line
        Log To Console    ${i}
        END

ForLoopTest2
        FOR    ${i}    IN    1  2  3  4  5  6  7  8  9  10    #if single space will be brint on 1 line; if 2 spaces in new line
        Log To Console    ${i}
        END

ForLoopTest3-ForEach
        ${items}    Create List        1  2  3  4  5  6  7  8  9  10
        FOR  ${i}  IN  ${items}
            Log To Console    ${i}
        END

ForLoopTest4
    FOR    ${name}    IN    John    Mon    Jane
        Log To Console    ${name}
    END
