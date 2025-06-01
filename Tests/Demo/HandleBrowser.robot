*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Test case Demo Handle Browser
    [Documentation]    This test case demonstrates how to handle browser windows
    [Tags]             Demo

    # Open the main page
    Open Browser  https://www.google.com  Chrome  alias=ChromeTest
    Maximize Browser Window

    # Perform some actions on the main page
    Open Browser  about:blank  ff  alias=FirefoxTest

    &{alias}  Get Browser Aliases
    Log    ${alias.ChromeTest}
    # Log    ${alias.FirefoxTest}
    # &{alias} = { ChromeTest=1 | FirefoxTest=2 }

    @{browser_ID}  Get Browser Ids
    # @{browser_ID} = [ 1, 2 ]
    Log    ${browser_ID}[1]
    # 2


    Switch Browser    1  # Chrome
    Go To    url=https://www.youtube.com
    Sleep    3s

    Switch Browser    ${alias.FirefoxTest}  # Firefox
    Go To    url=https://www.robotframework.org
    Sleep    3s
   

    # Close the browser window
    Close All Browsers