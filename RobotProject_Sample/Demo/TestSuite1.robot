*** Settings ***
Library    SeleniumLibrary  

# Suite Setup    Open Browser    ${URL}  chrome
# Suite Teardown    Close Browser  

Default Tags    sanity


*** Test Cases ***
MyFirstTest
    Set Tags    smoke
    Log    Hello World....  
    
MySecondTest
    Log    Hello World2....
    
MyThirdTest
    Log    Hello World3....
    
MyFourthTest
    Log    Hello World4....
    
FirstSeleniumTest
    Open Browser    https:google.com  chrome 
    Set Browser Implicit Wait    5
    Input Text      name=q         Automation Step by Step
    Press Keys    name=q         ENTER
    # Click Button    name=btnK        
    Sleep    2     
    # Close Browser 
    Log    Test Passed   
    
SampleLoginTest
    Open Browser    ${URL}  chrome
    Set Browser Implicit Wait    5
   LoginKW
    # Input Text    id=txtUsername    @{CREDENTIALS}[0]
    # Input Text    id=txtPassword    &{LOGINDATA}[password] 
    # Click Button    id=btnLogin   
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

