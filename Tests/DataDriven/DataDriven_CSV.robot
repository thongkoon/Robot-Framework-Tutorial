*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/DataDrivenTesting/common.robot
Library  DataDriver   file=../../Testdata/testdata_login.csv

Suite Setup  Start Testcase    ${URL}    Chrome
Suite Teardown  Finish Testcase
Test Template  Invalid Login Scenarios


*** Variables ***
${URL}         https://www.saucedemo.com/
${TEXTBOX_USERNAME}    id=user-name
${TEXTBOX_PASSWORD}    id=password
${LOGIN_BUTTON}    id=login-button
${TEXT_ERROR}    //*[@id="login_button_container"]/div/form/div[3]/h3

*** Test Cases ***
Verify Login Fails with Invalid Creds     ${username}  ${password}  ${error_message}


*** Keywords ***
Invalid Login Scenarios
    [Arguments]     ${username}  ${password}  ${error_message}
    Input Text      ${TEXTBOX_USERNAME}    ${username}
    Input Text      ${TEXTBOX_PASSWORD}    ${password}
    Click Button    ${LOGIN_BUTTON}
    Sleep    3s
    Element Should Contain    ${TEXT_ERROR}    ${error_message}