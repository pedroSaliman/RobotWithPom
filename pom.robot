*** Settings ***


Library    SeleniumLibrary
Variables  element.py
*** Keywords ***



TestBefore
    [Arguments]       ${site}     ${browser}        ${username}     ${password} 
    Open Browser       ${site}         ${browser}
    Maximize Browser Window
    Click Element    ${CLICKTOMYACCOUNT}  
    Click Element    ${CLICKTOLOGIN}
    Input Text       ${LOGINEMAIL}               ${username}  
    Input Text       ${LOGINPASSWORD}            ${password}  
    Click Element    ${LOGINSUBMIT}  

EditName
    [Arguments]         ${user}
    Click Element      ${ACOUNT}
     Input Text          ${thefname}       ${user}
    Click Element        ${CONT}

EditThePass
    [Arguments]      ${thepass1}            ${confirmpass}
    Click Element    ${CLICKPASS}
    Input Text      ${thepass}        ${thepass1}
    Input Text      ${thepass2}           ${confirmpass}
    Click Element    ${CONTpass}





















