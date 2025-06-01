*** Settings ***
Documentation    Basic search Functionality
Library    SeleniumLibrary
Resource  ../../Resources/CommonFunction.robot
Resource  ../../Resources/ebay_UserDefinedKeywords.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot
Resource  ../../Resources/PageObjects/LandingPage.robot

Test Setup       Start TestCase
Test Teardown    Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search Functionality for eBay 1
    [Documentation]  This test case verifies the basic search
    [Tags]           Functional

    HeaderPage.Input Search Text and Click Search    robot
    SearchResultsPage.Verify Search Results      robot
    
# Verify basic search Functionality for eBay 2
#     [Documentation]  This test case verifies the basic search
#     [Tags]           Functional

#     HeaderPage.Input Search Text and Click Search    books
#     SearchResultsPage.Verify Search Results      books

Verify advanced search Functionality
    [Documentation]  This test case verifies the advanced search
    [Tags]           Functional

    HeaderPage.Click on Advanced Search Link







