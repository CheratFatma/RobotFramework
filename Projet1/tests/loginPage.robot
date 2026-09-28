*** Settings ***
Documentation    fichier de test login
Library    SeleniumLibrary
Resource    ../resources/keyword.resource
Resource    ../pages/loginPage.resource
Test Setup    Init Browser
Test Teardown    Fermer Browser

*** Test Cases ***
loginPageValid
    [Documentation]    test de login avec identifiants valides
    [Tags]    valid    e2e
    loginPage.Connexion    standard_user    secret_sauce       
    Location Should Be    https://www.saucedemo.com/inventory.html
    
LoginPageInvalid
    [Documentation]    test de login avec identifiants invalides
        [Tags]    invalid    
        loginPage.Connexion    standard_user_fake    secret_sauce_fake
        loginPage.Get Error
        ${error}=    loginPage.Get Error Text
        Should Contain    ${error}    Epic sadface: Username and password do not match any user in this service 
