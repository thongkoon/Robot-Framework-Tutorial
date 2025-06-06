*** Settings ***
Library     SeleniumLibrary
Library    Dialogs


*** Variables ***
${ACCEPT_COOKIES}           id=CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll
${JOB_TITLE_TEXTFIELD}      id=input_1_5


*** Test Cases ***
Test case demo mouse operations
    [Documentation]    This test case demonstrates how to handle mouse operations
    [Tags]    demo

    # Open the main page
    Open Browser    https://www.sugarcrm.com/au/request-demo    Chrome
    Click Element    ${ACCEPT_COOKIES}
    Sleep    3s

    Mouse Down       ${JOB_TITLE_TEXTFIELD}
    Sleep    3s
    Mouse Up         ${JOB_TITLE_TEXTFIELD}    
    Sleep    3s
    
    Scroll Element Into View    tag=footer
    Mouse Down On Link    link=Terms of Use
    Sleep    3s

    Mouse Over    link=Privacy Policy
    Sleep    3s
    Mouse Out     link=Privacy Policy
    Sleep    3s

    Mouse Down On Image    //*[@id="main"]/div[2]/div/div/div/div/div[2]/div[1]/div[5]/img
    Sleep    3s

    Close Browser

Test case drag and drop
    [Documentation]    This test case demonstrates how to perform drag and drop operations
    [Tags]    demo

    # Open the main page
    Open Browser    https://demoqa.com/droppable/    Chrome
    Sleep    3s
    # Drag and drop operation
    Drag And Drop    id=draggable   id=droppable
    Sleep    3s

    Close Browser

Test case Right Click
    [Documentation]    This test case demonstrates how to perform right click operations
    [Tags]    demo

    # Open the main page
    Open Browser    https://demoqa.com/droppable/    Chrome
    Sleep    3s

    # Right click on the job title text field
    Open Context Menu   id=droppableExample-tab-accept
    Sleep    3s

    Close Browser
    
Test Demo code
    Skip
    Open Browser   https://www.sugarcrm.com/au/#   Chrome
    Click Element    ${ACCEPT_COOKIES}
    Pause Execution
    # Sleep    3s
    # # Button =>  Mouse Down(กดลง) + Mouse Up(ยกขึ้น) = Click Element
    # Mouse Down    (//*[@class='icon icon-sphere'])[1]
    # Sleep    3s
    # Mouse Up    (//*[@class='icon icon-sphere'])[1]
    # Sleep    3s
    Close Browser