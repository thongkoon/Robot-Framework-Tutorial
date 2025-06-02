*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TYING_LINK}    link=เริ่มทดลองใช้ฟรี

*** Test Cases ***
Test case Handle Tabbed Browsers
    [Documentation]    This test case demonstrates how to handle tabbed browsers
    [Tags]             Demo

    Open Browser  http://salesfore.com  Chrome  alias=ChromeTest
    Sleep    2s

    Wait Until Element Is Visible    ${TYING_LINK}  10s
    Click Element    ${TYING_LINK}
    
    @{WindowsHandles}  Get Window Handles
    Log    ${WindowsHandles}
    Sleep    4s

    @{WindowsIdentifiers}  Get Window Identifiers
    Log    ${WindowsIdentifiers}
    Sleep    4s

    @{WindowsNames}  Get Window Names
    Log    ${WindowsNames}
    Sleep    4s

    @{WindowsTitles}  Get Window Titles
    Log    ${WindowsTitles}
    Sleep    4s

    Set Window Position    100    200

    ${width}  ${hight}  Get Window Size
    Log    Window Size: ${width}x${hight}
    Sleep    4s

    Switch Window    ${WindowsHandles}[1]  # Switch to the second window
    Sleep    4s
    
    Switch Window    ${WindowsHandles}[0]  # Switch to the first window
    Sleep    4s

    Close Browser