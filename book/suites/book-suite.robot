*** Settings ***
Resource            ../pageObjects/HomePage/home-page.robot
Resource            ../pageObjects/LoginPage/login-page.robot
Resource            ../pageObjects/BookPage/book-page.robot

*** Test Cases ***
#Testing Search Feature With Valid Data
   # [Setup]    Test Setup
   # Perform Search
   # [Teardown]    Test Teardown

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
    Click Book Button
    Get Index From List Content
    Get Index From List From City
    Get Index From List To City
    Get Index From List Class
    #Input Start Date
    #Input End Date
    Get Index Flight Radio Button
    Select Checkbox
    CLick Book Flight Button
    Click Price Button
    Click Confirm Button

Perform Invalid Search
    Click Book Button
    Get Index From List From City
    Get Index From List To City
    Get Index From List Class
    #Input Start Date
    #Input End Date
    Get Index Flight Radio Button
    Select Checkbox
    CLick Book Flight Button
    Click Price Button
    Click Confirm Button

Test Teardown
    [Documentation]    Clean up after the test.
    Close Flight Application