*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text                id=gh-ac   laptop
    Press Keys                id=gh-search-btn    [Return]
    Page Should Contain       results


Filter results by condition
    Mouse Over        xpath = //button[normalize-space()='Condition']
    Sleep    2s
    Click Element     xpath = //button[normalize-space()='Condition']
    Sleep    2s
    Click Element     xpath = //*[@id="s0-55-0-9-8-4-2-0-5[0]-70[1]-27-@content-menu"]/li[2]/a
    Sleep    2s

Verify filter results
    Element Should Contain    //div[text()="New"]    New
    Sleep    3s
