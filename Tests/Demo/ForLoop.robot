*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.saucedemo.com/
${USERNAME}    id=user-name
${PASSWORD}    id=password
${LOGIN_BUTTON}    id=login-button

*** Test Cases ***
Demo For Loop
    [Documentation]    This test case demonstrates how to use FOR loop in Robot Framework
    [Tags]    demo

    # Open the main page
    Open Browser    ${URL}    Chrome

    Input Text    ${USERNAME}    standard_user
    Input Text    ${PASSWORD}    secret_sauce
    Click Button  ${LOGIN_BUTTON}

    ${items}=    Get WebElements    class=inventory_item_label
    ${count}=    Get Length    ${items}
    Log    Total items: ${count}

    FOR    ${item}    IN    @{items}
        ${text}=    Get Text    ${item}
        Log    Item: ${text}
    END

    Close Browser