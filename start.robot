*** Settings ***
Library  SeleniumLibrary
Resource  pom.robot
Library    XML
Suite Setup  Login
Suite Teardown  close

*** Variables ***
${site}    https://naveenautomationlabs.com/opencart/ 
${browser}     chrome
${user}        naveenanimation20@gmail.com
${pass}              2521997
${name}              mohamed
${thepassword1}         2521997
${thepassword2}         2521997



*** Test Cases ***
Edit Account
  EditCase    
    
    
Edit Password
    EditPass
    
       





*** Keywords ***

Login 
        TestBefore  ${site}   ${browser}      ${user}      ${pass}
        ##################### Before use Pom
        # Open Browser   https://naveenautomationlabs.com/opencart/    chrome
        # Maximize Browser Window
        # Click Element        css:a[title='My Account'] span[class='hidden-xs hidden-sm hidden-md']
        # Click Element        css:a[href='https://naveenautomationlabs.com/opencart/index.php?route=account/login'] 
        # Input Text           css:#input-email    naveenanimation20@gmail.com
        # Input Password       css:#input-password    Selenium@12345
        # Click Element        css:input[value='Login']



EditCase
     EditName       ${name}
     ################## Before use pom
    # Click Element    css:div[id='account-account'] a:nth-child(2)
    # Input Text       css:#input-firstname    walled
    # Click Element    css:input[value='Continue']

EditPass
     EditThePass     ${thepassword1}    ${thepassword2}
          ################## Before use pom

    #  Click Element    css:a:nth-child(3)
    #  Input Text       css:#input-password    2521997
    #  Input Text       css:#input-confirm     2521997
    #  Click Element    css:input[value='Continue']

     
close
    Close All Browsers
    

    