*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start Testcase
    [Arguments]    ${url}  ${browser}
    Open Browser  ${url}   ${browser}
    Maximize Browser Window

Finish Testcase
    Close Browser