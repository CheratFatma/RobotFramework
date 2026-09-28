*** Settings ***
Documentation    fichier pour keywords
Library    ../biblio.py
Library    SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${URL}    https://www.saucedemo.com/

***Keywords***
Saluer 
    Log To Console    hello
Parler
    [Arguments]    ${name}
    Log To Console    hello ${name}
Calculer
    [Arguments]    ${nombre1}    ${nombre2}
    ${resultat}=    Evaluate    ${nombre1}+${nombre2}
    Log To Console    Le resultat est = ${resultat}   
RecupererAge
    ${age}=    retournerAge    1999
    Log To Console    Votre age : ${age}

Init Browser
    #Open Browser        https://www.saucedemo.com/    chrome
    Open Browser        ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    10s

Fermer Browser
    Close Browser
Connexion
    [Arguments]    ${username}    ${password}
    Input Text    id:user-name    ${username}
    Input Text    id:password     ${password}
    Click Button    id:login-button
    Location Should Be    https://www.saucedemo.com/inventory.html


