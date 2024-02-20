*** Settings ***
Resource            ../pageObject/HomePageObjects/home-page.robot
Resource            ../pageObject/LoginPageObjects/login-page.robot
Resource            ../pageObject/SearchPageObject/search-page.robot

*** Test Cases ***
Testing Search Feature With Valid Data
    [Setup]    Test Setup
    Perform Search
    [Teardown]    Test Teardown

Testing Search Feature With Invalid Data
    [Setup]       Test Setup
    Perform Invalid Search
    [Teardown]    Test Teardown

*** Keywords ***
Test Setup
    [Documentation]    Set up the necessary conditions for the test.
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username
    login-page.Input Password User
    Click Sign In button On Login Page
    login-page.Verify User Is success to Logged In

Perform Search
    [Documentation]    Perform the steps to test the search feature.
    Click Search Button On Dashboard
    Input Valid Flight Number 
    Click Search Button On Page
    Verify Flight Number is Correct

Perform Invalid Search
    [Documentation]
    Click Search Button On Dashboard
    Input Invalid Flight Number 
    Click Search Button On Page
    Verify Flight Number Invalid

Test Teardown
    [Documentation]    Clean up after the test.
    Close Flight Application