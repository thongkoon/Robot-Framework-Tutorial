*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Input Search Text and Click Search
    Input Text       id=gh-ac    mobile
    Click Element    id=gh-search-btn   

Click on Advanced Search Link
    Click Element     //a[text()='Advanced']