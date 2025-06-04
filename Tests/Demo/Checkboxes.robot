*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test cast Demo Checkboxes
    [Documentation]    This test case demonstrates how to handle checkboxes
    [Tags]             Demo

    # Open the main page
    Open Browser  https://letcode.in/radio  Chrome

    Page Should Contain Checkbox      (//input[@type='checkbox'])[1]
    Page Should Not Contain Checkbox      (//input[@type='checkbox'])[3]

    Select Checkbox    (//input[@type='checkbox'])[2]
    Sleep    3s
    Unselect Checkbox    (//input[@type='checkbox'])[2]


    Checkbox Should Be Selected    (//input[@type='checkbox'])[1]
    Checkbox Should Not Be Selected    (//input[@type='checkbox'])[2]

    Sleep    3s
    Close Browser

