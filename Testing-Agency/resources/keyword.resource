*** Settings ***
Documentation    fichier pour keywords
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://ssid-testing-agency.github.io/Lab.qa/#/login

***Keywords***
Init Browser
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Implicit Wait    10s

Fermer Browser
    Close Browser



