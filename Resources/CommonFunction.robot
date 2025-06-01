** Settings ***
Library  SeleniumLibrary
Library    Dialogs


*** Variables ***
${env}    sit
&{url}    sit=https://sit.demo.com  uat=https://uat.demo.com/
*** Keywords ***
Start TestCase
    # Open Browser  https://www.ebay.com  gc
    Open Browser  ${url.${env}}  Chrome
    # Maximize Browser Window

    
Finish TestCase
    Close Browser

    # nid-kud-3
    # nid-s7a-3