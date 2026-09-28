*** Settings ***
Documentation    fichier de test register
Library    SeleniumLibrary
Resource    ../resources/keyword.resource
Resource    ../pages/RegisterPage.resource
Resource    ../pages/homePage.resource
Test Setup    Init Browser
Test Teardown    Fermer Browser

*** Test Cases ***
Register
    [Documentation]    test de register
    [Tags]    Valid
    homePage.Click Cancel
    Wait Until Location Is    https://agropeyi.fr/index.php
    homePage.Click Register  
    Wait Until Location Is    https://agropeyi.fr/inscription.php
    RegisterPage.Register    ch    la    lea@gmail.com    0656000000    1 rue Paris    Paris    75000    Fatma@wr1.    Fatma@wr1.
    Location Should Be    https://agropeyi.fr/inscription.php
    ${msg}=    RegisterPage.Get Success Message
    Should Contain    ${msg}    Inscription réussie ! Vous pouvez maintenant vous connecter.                         


     
    





    


