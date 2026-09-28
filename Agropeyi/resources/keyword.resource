*** Settings ***
Documentation    fichier pour keywords
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://agropeyi.fr/index.php

***Keywords***
Init Browser
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    10s

Fermer Browser
    Close Browser
Connexion
    [Arguments]    ${username}    ${password}
    Input Text    id:user-name    ${username}
    Input Text    id:password     ${password}
    Click Button    id:login-button
    Location Should Be    https://www.saucedemo.com/inventory.html


