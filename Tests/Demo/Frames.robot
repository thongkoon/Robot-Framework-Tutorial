*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Test case Demo handle Frames
    [Documentation]    This test case demonstrates how to handle frames
    [Tags]             Demo

    # Open the main page
    Open Browser  https://www.w3schools.com/js/tryit.asp?filename=tryjs_myfirst  Chrome

    Select Frame    id=iframeResult
    Current Frame Should Contain    My First JavaScript
    Current Frame Should Not Contain    My First JavaScript01

    Unselect Frame

    Frame Should Contain    id=iframeResult  My First JavaScript


    Sleep    5s
    Close Browser