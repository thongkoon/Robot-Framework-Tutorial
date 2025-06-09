*** Settings ***
Library  SeleniumLibrary
Library    Dialogs

*** Variables ***
${URL}         https://www.saucedemo.com/
${USERNAME}    id=user-name
${PASSWORD}    id=password
${LOGIN_BUTTON}    id=login-button



*** Test Cases ***
Test case demo if-else
    [Documentation]    This test case demonstrates how to use if-else conditions in Robot Framework
    [Tags]             demo

    # Open the main page
    Open Browser        ${URL}    Chrome

    Input Text         ${USERNAME}    standard_user
    Input Text         ${PASSWORD}    secret_sauce
    Click Button       ${LOGIN_BUTTON}

    ${item_count}    Get Element Count    class=inventory_item_label
    ${item_count}    Evaluate    ${item_count} - 1
    IF    ${item_count} == 6
        Test Keyword 1
    ELSE IF    ${item_count} < 6
        Test Keyword 2
    ELSE
        Test Keyword 3
    END

    Close Browser


*** Keywords ***
Test Keyword 1
    Log  Executed Keyword1 - Found Items as expected
Test Keyword 2
    Log  Executed Keyword2 - Found less than expected items
Test Keyword 3
    Log  Executed Keyword3 - Exception

