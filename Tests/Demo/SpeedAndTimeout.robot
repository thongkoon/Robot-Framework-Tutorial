*** Settings ***
# เป็นการ set timeout ทั้งหมดของ SeleniumLibrary
Library  SeleniumLibrary  timeout=10s  

*** Variables ***
${ACCEPT_COOKIES}           id=CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll
${JOB_TITLE_TEXTFIELD}      id=input_1_5

*** Test Cases ***
Test case to demonstrate speed and timeout
    [Documentation]    This test case demonstrates how to set speed and timeout for SeleniumLibrary operations
    [Tags]             demo
    ${default_timeout}      Get Selenium Timeout
    ${default_speed}        Get Selenium Speed
    
    # เป็นการ set timeout เฉพาะ test case นี้
    Set Selenium Timeout    5s
    Set Selenium Speed      2s

    # Open the main page
    Open Browser    https://www.sugarcrm.com/au/request-demo    Chrome
    Click Element    ${ACCEPT_COOKIES}

    Mouse Down       ${JOB_TITLE_TEXTFIELD}
    Mouse Up         ${JOB_TITLE_TEXTFIELD}    
    
    Scroll Element Into View    tag=footer
    Mouse Down On Link    link=Terms of Use

    Mouse Over    link=Privacy Policy
    Mouse Out     link=Privacy Policy

    Close Browser