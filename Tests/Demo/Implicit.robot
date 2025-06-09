*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ACCEPT_COOKIES}           id=qCybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll

*** Test Cases ***
Test case demo implicit wait
    [Documentation]    This test case demonstrates how to use implicit wait in SeleniumLibrary
    [Tags]             demo

    ${default_implicit_wait}    Get Selenium Implicit Wait
    # ตั้งรอเมื่อหา elementไม่เจอ []
    Set Selenium Implicit Wait    10s

    Open Browser    https://www.sugarcrm.com/au/request-demo    Chrome
    Click Element    ${ACCEPT_COOKIES}

    Sleep    3s
    Close Browser