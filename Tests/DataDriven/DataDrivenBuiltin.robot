*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/DataDrivenTesting/common.robot

Suite Setup  Start Testcase    ${URL}    Chrome
Suite Teardown  Finish Testcase
Test Template  Invalid Login Scenarios

*** Variables ***
${URL}         https://www.saucedemo.com/
${TEXTBOX_USERNAME}    id=user-name
${TEXTBOX_PASSWORD}    id=password
${LOGIN_BUTTON}    id=login-button
${TEXT_ERROR}    //*[@id="login_button_container"]/div/form/div[3]/h3

*** Test Cases ***                                  Username        Password         Error Message
Verify Login Fails - Blank Username and Password    ${EMPTY}        ${EMPTY}         Epic sadface: Username is required
Verify Login Fails - Wrong Username                 standard_us     secret_sauce     Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong Password                 standard_user   wrong_password   Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong Username and Password    wrong_user      wrong_password   Epic sadface: Username and password do not match any user in this service


*** Keywords ***
Invalid Login Scenarios
    [Arguments]     ${username}  ${password}  ${error_message}
    Input Text      ${TEXTBOX_USERNAME}    ${username}
    Input Text      ${TEXTBOX_PASSWORD}    ${password}
    Click Button    ${LOGIN_BUTTON}
    Sleep    3s
    Element Should Contain    ${TEXT_ERROR}    ${error_message}