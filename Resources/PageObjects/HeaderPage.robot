*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# ${search_text}    mobile
# @{search_text}      books  travel  robot  gifts
&{search_text}  tc1=books  tc2=travel 

*** Keywords ***
Input Search Text and Click Search
    # Input Text       id=gh-ac    ${search_text}
    # Input Text       id=gh-ac    ${search_text}[0]
    Input Text       id=gh-ac    ${search_text.tc1}
    Click Element    id=gh-search-btn   

Click on Advanced Search Link
    Click Element     xpath=//a[text()='Advanced']
