*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_text}    mobile


*** Keywords ***
Input Search Text and Click Search
    Input Text       id=gh-ac    ${search_text}
    Click Element    id=gh-search-btn   

Click on Advanced Search Link
    Click Element     xpath=//a[text()='Advanced']

Search for another text
    Input Text    id=gh-ac    ${search_text}