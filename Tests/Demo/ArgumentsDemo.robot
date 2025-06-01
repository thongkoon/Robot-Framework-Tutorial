*** Settings ***

*** Test Cases ***
Argument demo keyword test 1
    Argument demo keyword    Hello    Tock

Argument demo keyword test 2
    Argument demo keyword    test    demo

*** Keywords ***
Argument demo keyword
    [Arguments]  ${arg1}  ${arg2}
    Log    ${arg1}
    Log    ${arg2}