*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ACCEPT_COOKIES}           id=CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll
${SUBMIT_BUTTON}            id=gform_submit_button_1

*** Test Cases ***
Test case demo explicit wait
    [Documentation]    This test case demonstrates how to use explicit wait in SeleniumLibrary
    [Tags]             demo

    # Open the main page
    Open Browser    https://www.sugarcrm.com/au/request-demo    Chrome
    Click Element   ${ACCEPT_COOKIES}

# Page Content
    # รอจนกว่า ข้อความ จะปรากฏในหน้าปัจจุบัน
    Wait Until Page Contains    get no-nonsense
    # รอจนกว่า element (locator) จะปรากฏในหน้าปัจจุบัน
    Wait Until Page Contains Element    ${SUBMIT_BUTTON}
    # รอจนกว่า ข้อความ จะหายไปจากหน้าปัจจุบัน หรือ ไม่ปรากฏ
    Wait Until Page Does Not Contain    Test get no-nonsense
    # รอจนกว่า element จะหายไปจากหน้า หรือ ไม่ปรากฏ
    Wait Until Page Does Not Contain Element    gform_submit_button_1111111
    
# URL / Location
    # รอจนกว่า URL จะเป็นค่าที่ระบุไว้เป๊ะ
    Wait Until Location Is    expected=https://www.sugarcrm.com/au/request-demo/
    # รอจนกว่า URL จะไม่เป็นค่าที่กำหนด
    Wait Until Location Is Not    location=https://www.sugarcrm.com/au/request-demo/1111111
    # รอจนกว่า URL จะ มีข้อความบางส่วน ที่กำหนด
    Wait Until Location Contains    expected=sugarcrm.com
    # รอจนกว่า URL จะ มีข้อความบางส่วน ที่กำหนด
    Wait Until Location Does Not Contain    eud

# Element
    # รอข้อความบางส่วนแสดงใน element
    Wait Until Element Contains          //*[@id="main"]/div[1]/div/div/div[1]/div/h1   Book 
    # รอข้อความบางส่วนไม่แสดงใน element
    Wait Until Element Does Not Contain  //*[@id="main"]/div[1]/div/div/div[1]/div/h1   Test  
    # รอให้ element พร้อมใช้งาน (คลิก/พิมพ์ได้)
    Wait Until Element Is Enabled        //*[@id="main"]/div[1]/div/div/div[1]/div/h1
    # รอให้ element แสดงในหน้า
    Wait Until Element Is Visible        //*[@id="main"]/div[1]/div/div/div[1]/div/h1
    # รอให้ element ไม่แสดงในหน้า
    Wait Until Element Is Not Visible    //*[@id="main"]/div[1]/div/div/div[1]/div/h1/b

    Sleep    3s
    Close Browser