*** Settings ***
Library  SeleniumLibrary
Resource  ../Locators/HeaderLocators.robot

*** Variables ***
# ${search_text}    mobile
# @{search_text}      books  travel  robot  gifts
# &{search_text}  tc1=books  tc2=travel 


*** Keywords ***
Input Search Text and Click Search
    # Input Text       id=gh-ac    ${search_text}
    # Input Text       id=gh-ac    ${search_text}[0]
    # Input Text       id=gh-ac    ${search_text.tc1}
    [Arguments]      ${search_text}
    Input Text       ${SEARCH_TEXT_BOX}    ${search_text}
    Click Element    ${SEARCH_BUTTON}  

Click on Advanced Search Link
    Click Element     link=${ADVANCED_SEARCH_LINK}
