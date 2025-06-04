*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Test case Demo Radio Button
    [Documentation]    This test case demonstrates how to handle radio buttons
    [Tags]             Demo

    # Open the main page
    Open Browser  https://letcode.in/radio  Chrome

    Page Should Contain Radio Button        id=yes
    Page Should Not Contain Radio Button    id=yesop

    # ทดสอบว่า radio button นี้ยังไม่ได้ถูกเลือก    [name]
    Radio Button Should Not Be Selected     answer

    # เลือก radio button ที่มี group=answer id=no
    Select Radio Button    answer    no

    # ตรวจสอบว่า radio button ที่อยู่ในกลุ่ม foobar ถูกเลือกตาม value ที่กำหนดไว้ ไม่สามารถใช้ id แทนได้
    # Radio Button Should Be Set To    answer    no

    Sleep    3s
    Close Browser