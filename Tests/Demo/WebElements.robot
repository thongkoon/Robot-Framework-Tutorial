*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH_BOX}              id=APjFqb
${SEARCH_BY_GG_BUTTON}     name=btnK
${LOGO}                    class=lnXdpd
${LOGIN_BUTTON}            Link=เข้าสู่ระบบ
${ACCOUNT}                 class=gb_B gb_Za
${GMAIL_BUTTON}            class=gb_X



*** Test Cases ***
Test case Demo Web Elements operations keyword
    [Documentation]    This test case demonstrates how to interact with web elements
    [Tags]             Demo

    # Open the main page
    Open Browser  https://www.google.com  Chrome  alias=ChromeTest
    # Maximize Browser Window

    ${attr}             Get Element Attribute   ${SEARCH_BOX}  class
    ${count}            Get Element Count       ${SEARCH_BY_GG_BUTTON}
    ${width}  ${hight}  Get Element Size        ${SEARCH_BOX}
    ${webElement}       Get WebElement          ${SEARCH_BOX}
    @{webElements}      Get WebElements         ${SEARCH_BOX}

    Capture Element Screenshot  ${LOGO}

    # ใช้เพื่อ กำหนด id ใหม่ (สมมุติ) ให้กับ element ที่ระบุ
    Assign Id To Element    ${SEARCH_BY_GG_BUTTON}    RCVid

    # ใช้เพื่อตรวจสอบว่า element ที่มี id=RCVid ปรากฏอยู่ในหน้า
    Page Should Contain Element    RCVid
    
    # ตรวจสอบว่า element ที่ระบุ ได้รับ focus อยู่ในขณะนั้น
    Element Should Be Focused      ${SEARCH_BOX}

    # ตรวจสอบว่า element แสดงผลอยู่/ไม่แสดงผลอยู่ในหน้า
    Element Should Be Visible        ${LOGIN_BUTTON}
    Element Should Not Be Visible    class=gb_B gb_Za
    
    Input Text            ${SEARCH_BOX}      RCVAcademy
    Sleep    2s
    Clear Element Text    ${SEARCH_BOX}

    # ตรวจสอบว่า attribute ของ element มีค่าเท่ากับที่เราต้องการ หรือไม่
    Element Attribute Value Should Be    ${SEARCH_BY_GG_BUTTON}   value    ค้นหาด้วย Google

    # ตรวจสอบว่า element สามารถใช้งานได้ (enabled)
    Element Should Be Enabled    ${SEARCH_BY_GG_BUTTON}

    # ตรวจสอบว่า ข้อความบางอย่างปรากฏอยู่ใน element ที่ระบุ
    Element Should Contain    ${GMAIL_BUTTON}    Gma
    # ตรวจว่า element มีข้อความ ตรงเป๊ะ
    Element Text Should Be    ${GMAIL_BUTTON}    Gmail
    # ตรวจข้อความบน ทั้งหน้าเว็บ
    Page Should Contain                          Gmai

    Double Click Element    //div[@class='o3j99 LLD4me yr19Zb LS8OJ']
    # Click Element At Coordinates    locator    xoffset    yoffset

    Sleep    4s
    Close Browser