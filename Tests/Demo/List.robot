*** Settings ***
Library  SeleniumLibrary
Library    Dialogs

** Variables ***
${ACCEPT_COOKIES}           id=CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll
${COMPANY_DROPDOWN}         id=input_1_8

${CAR_DROPDOWN_LIST}    id=cars

*** Test Cases ***
Test case Demo List operations Keywords in robot
    [Documentation]    This test case demonstrates how to handle list operations
    [Tags]             Demo

    # Open the main page
    Open Browser  https://www.sugarcrm.com/au/request-demo/  Chrome
    
    # Wait Until Element Is Visible    ${ACCEPT_COOKIES}
    Click Element                    ${ACCEPT_COOKIES} 
    
    # Wait Until Element Is Visible      gform_submit_button_1
    Scroll Element Into View           gform_submit_button_1 
   
    # ตรวจสอบว่า มี <select> (list box / dropdown) ปรากฏอยู่ในหน้า
    Page Should Contain List           ${COMPANY_DROPDOWN}

    Select From List By Index    ${COMPANY_DROPDOWN}    1
    ${LLabel_1}         Get Selected List Label    ${COMPANY_DROPDOWN}
    Sleep    2s

    Select From List By Label    ${COMPANY_DROPDOWN}    51 - 100 employees
    ${LLabel_2}         Get Selected List Label    ${COMPANY_DROPDOWN}
    Sleep    2s


    Select From List By Value    ${COMPANY_DROPDOWN}    level5
    ${LLabel_3}         Get Selected List Label    ${COMPANY_DROPDOWN}
    Sleep    2s


# Multiple Select List
    Go To    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple    
    Select Frame    id=iframeResult
    
    Select All From List    ${CAR_DROPDOWN_LIST}
    @{ListLabels}       Get Selected List Labels    ${CAR_DROPDOWN_LIST}
    Sleep    2s

    Unselect From List By Index    ${CAR_DROPDOWN_LIST}    0
    Sleep    2s
    Unselect From List By Label    ${CAR_DROPDOWN_LIST}   Saab
    Sleep    2s
    Unselect From List By Value    ${CAR_DROPDOWN_LIST}   opel
    Sleep    2s

    @{ListValues}       Get Selected List Values    ${CAR_DROPDOWN_LIST}

    List Selection Should Be          ${CAR_DROPDOWN_LIST}    Audi
    Sleep    2s
    
    Unselect All From List            ${CAR_DROPDOWN_LIST}
    List Should Have No Selections    ${CAR_DROPDOWN_LIST}
   
    Sleep    3s
    Close Browser