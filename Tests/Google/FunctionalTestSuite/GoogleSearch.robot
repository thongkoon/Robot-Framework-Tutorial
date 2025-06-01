*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test cases ***
This is sample test case
    [documentation]    Google test
    [tags]    regression

    Open Browser    https://www.google.com    Chrome
    Close Browser

    
*** Keywords ***