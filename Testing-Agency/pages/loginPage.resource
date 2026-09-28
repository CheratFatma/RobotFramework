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
    Input Text    ${username}    jean_dupont
Fill Password
    Input Text    ${password}    Baguette42!
Click login
    Click Button    ${login-btn}
Connexion
    Fill Username
    Fill Password
    Click login
Get Error Text
    ${msg}=    Get Text    ${error}
    RETURN    ${msg}



