*** Settings ***
Library  SeleniumLibrary
Test Teardown    Close Browser

*** Variables ***
${END_POINT}        https://www.w3schools.com/js/tryit.asp?filename=
${URL_SUGARCRM}     https://www.sugarcrm.com/au/request-demo/

*** Test Cases ***
Test case handle normal Alerts
    [Documentation]    This test case demonstrates how to handle normal alerts
    [Tags]             Demo
    
    Start TestCase with click button    tryjs_alert
    Sleep    2s
    ${message}        Handle Alert    action=ACCEPT   timeout=10s


Tess case handle confirm Alerts
    [Documentation]    This test case demonstrates how to handle confirm alerts
    [Tags]             Demo

    Start TestCase with click button     tryjs_confirm
    Sleep    2s
    ${message}        Handle Alert    action=DISMISS   timeout=10s

Test case handle prompt Alerts
    [Documentation]    This test case demonstrates how to handle prompt alerts
    [Tags]             Demo

    Start TestCase with click button     tryjs_prompt
    Sleep    2s
    # สามารถเพิ่ม action=ACCEPT หรือ action=DISMISS ได้
    Input Text Into Alert    Test message  
    Sleep    2s

Test case handle Alerts with Alert Should Be Present
    [Documentation]    This test case demonstrates how to handle alerts with Alert Should Be Present
    [Tags]             Demo

    Start TestCase with click button     tryjs_alert2
    Sleep    2s
    Alert Should Be Present    text=Hello How are you?  action=ACCEPT
    Sleep    2s

Test case handle Alerts with Alert Should Not Be Present
    [Documentation]    This test case demonstrates how to handle alerts with Alert Should Not Be Present
    [Tags]             Demo

    Open Browser    ${URL_SUGARCRM}    Chrome
    # ตรวจสอบว่าไม่มี alert ปรากฏภายใน 10 วิ ถ้ามี alert ให้คลิก OK
    Alert Should Not Be Present    action=ACCEPT  timeout=10s
    Sleep    2s 

*** Keywords ***
Start TestCase with click button
    [Arguments]       ${keyword}

    Open Browser      ${END_POINT}${keyword}    Chrome
    Select Frame      iframeResult
    Sleep    2s
    Click Button      //button[normalize-space()='Try it']
    