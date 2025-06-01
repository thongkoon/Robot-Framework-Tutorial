*** Settings ***
Library  SeleniumLibrary
Resource  HeaderPage.robot

*** Variables ***
${results_text}    results for 

*** Keywords ***
Verify Search Results
    # Page Should Contain    results for mobile
    Wait Until Page Contains    ${results_text} ${search_text}    timeout=10s 

# Select product condition

# Select delivery options
    