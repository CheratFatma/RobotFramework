*** Settings ***
Documentation    fichier de test produit
Library    SeleniumLibrary
Resource    ../resources/keyword.resource
Resource    ../pages/produitPage.resource
Test Setup    Init Browser
Test Teardown    Fermer Browser

*** Test Cases ***
parcoursProduit
    [Documentation]    test de parcours produit
    [Tags]    produit
    Connexion    standard_user    secret_sauce
    produitPage.Click Produit
    produitPage.Get Remove
    ${cart}=    produitPage.Get Badge Text
    Should Contain    ${cart}    1
    produitPage.Click Shopping Button
    Location Should Be    https://www.saucedemo.com/cart.html



    