*** Settings ***
Documentation    page de login
Library    SeleniumLibrary

*** Variables ***
${username}    id:user-name
${password}    id:password
${click-btn}    id:login-button
${error}    css:[data-test="error"]

*** Keywords ***
Fill Username
    [Arguments]    ${u}
    Input Text    ${username}    ${u}

Fill Password
    [Arguments]    ${p}
    Input Text    ${password}    ${p}

Click Login
    Click Button    ${click-btn}

Get Error Text
    ${msg}=    Get Text    ${error}
    RETURN    ${msg}

Get Error
    Element Should Be Visible    ${error}

Connexion
    [Arguments]    ${userN}    ${pass}
    Fill Username    ${userN}
    Fill Password    ${pass}
    Click Login

    


