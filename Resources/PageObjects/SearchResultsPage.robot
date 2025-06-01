*** Settings ***
Library  SeleniumLibrary
Resource  HeaderPage.robot

*** Variables ***
${results_text}    results for 

*** Keywords ***
Verify Search Results
    # Page Should Contain    results for mobile
    # Wait Until Page Contains    ${results_text} ${search_text}    timeout=10s 
    # Wait Until Page Contains    ${results_text} ${search_text}[0]    timeout=10s 
    # Wait Until Page Contains    ${results_text} ${search_text.tc1}   timeout=10s 
    [Arguments]    ${search_text}
    Wait Until Page Contains    ${results_text} ${search_text}   timeout=10s 

# Select product condition

# Select delivery options
    