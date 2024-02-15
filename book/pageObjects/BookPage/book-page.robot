*** Settings ***
Resource            ../base/base.robot
Resource            ../../pageObjects/HomePage/home-page.robot
Resource            ../../pageObjects/LoginPage/login-page.robot

*** Keywords ***   
Click Book Button
    Click Element                  locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

Get Index From List Content
    Page Should Contain Element    locator=//android.support.v7.app.ActionBar.Tab[@content-desc="Round Trip"]                   loglevel=1
 
Get Index From List From City
    Page Should Contain Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]    loglevel=1
    
Get Index From List To City
    Page Should Contain Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]       loglevel=2

Get Index From List Class
    Page Should Contain Element    locator=//android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]    loglevel=0
    
# Input Start Date
   #  Page Should Contain Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]  Text="5"

# Input End Date
   #  Page Should Contain Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    
Get Index Flight Radio Button
    Page Should Contain Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]  loglevel=1

Select Checkbox
    Click Element    locator=//android.widget.CheckBox[@resource-id="com.example.myapplication:id/checkBoxDay"] 
    
CLick Book Flight Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Click Price Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price1"]

CLick Confirm Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

*** Test Cases ***
Book With Invalid Data
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
