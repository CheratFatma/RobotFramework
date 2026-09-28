*** Settings ***
Documentation    Home Page
Library    SeleniumLibrary

*** Variables ***
${cancel}    css:.btn-close.mobile-launch-close
${click-btn}    class=top-bar-btn
${popup}    css:.top-bar-link


*** Keywords ***
Click Cancel
    Wait Until Element Is Visible    ${cancel}    10s   
    Click Element    ${cancel}
Click Register 
    Wait Until Element Is Visible    ${popup}    10s
    Click Element    ${click-btn}
    


