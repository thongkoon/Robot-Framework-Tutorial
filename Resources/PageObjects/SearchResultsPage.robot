*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    # Page Should Contain    results for mobile
    Wait Until Page Contains    results for mobile    timeout=10s 

# Select product condition

# Select delivery options
    