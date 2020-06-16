*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***   
    
SampleLoginTest
    Open Browser    ${URL}  chrome
    Set Browser Implicit Wait    5 
    LoginKW
    Click Element    id=welcome 
    Click Element    link=Logout     
    Close Browser   
    Log    Test Completed    
    Log    This test was executed by %{username} on %{os}    
    
*** Variables ***
${URL}       https://opensource-demo.orangehrmlive.com/  
@{CREDENTIALS}    Admin    admin123  
&{LOGINDATA}    username=Admin    password=admin123       


*** Keywords ***
LoginKW
    
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Text    id=txtPassword    &{LOGINDATA}[password]
    Click Button    id=btnLogin

