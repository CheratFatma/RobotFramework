*** Settings ***
Documentation    Login Page
Library    SeleniumLibrary

*** Variables ***
${username}    id:username
${password}    id:password
${login-btn}    css:[data-testid="login-submit"]
${error}    css:[data-testid="login-error"]

*** Keywords ***
Fill Username
    [Arguments]    ${u}
    Input Text    ${username}    ${u}   
Fill Password
    [Arguments]    ${u}
    Input Text    ${password}    ${u}
Click login
    Click Button    ${login-btn}
Connexion
    [Arguments]    ${u}    ${p}
    Fill Username    ${u}
    Fill Password    ${p}
    Click login
Get Error Text
    ${msg}=    Get Text    ${error}
    RETURN    ${msg}
Error
    Element Should Be Visible    ${error}



