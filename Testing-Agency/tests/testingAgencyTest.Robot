*** Settings ***
Documentation    fichier de test testing agency
Library    SeleniumLibrary
Resource    ../resources/keyword.resource
Resource    ../pages/loginPage.resource
Resource    ../pages/catalogPage.resource
Resource    ../pages/wishlistPage.resource
Resource    ../pages/cartPage.resource
Resource    ../pages/checkoutPage.resource



Test Setup    Init Browser
Test Teardown    Fermer Browser

*** Test Cases ***
Register
    [Documentation]    test de register
    [Tags]    e2e
    loginPage.Connexion
    Location Should Be    https://ssid-testing-agency.github.io/Lab.qa/#/catalog
    catalogPage.Add To WishList
    ${number}=    catalogPage.Get Text Wish List
    Should Contain    ${number}    1
    catalogPage.Click Wish List
    Location Should Be    https://ssid-testing-agency.github.io/Lab.qa/#/wishlist
    wishlistPage.Click Add To Cart
    ${number}=    wishlistPage.Get Text Cart
    Should Contain    ${number}    1
    wishlistPage.Click Wish List
    Location Should Be    https://ssid-testing-agency.github.io/Lab.qa/#/cart
    cartPage.Fill code Promo    fatma
    cartPage.Click Commander
    Location Should Be    https://ssid-testing-agency.github.io/Lab.qa/#/checkout/info
    checkoutPage.Remplir Formulaire    la    la    lonnngm@gmail.com    75000
    Location Should Be    https://ssid-testing-agency.github.io/Lab.qa/#/checkout/review
    checkoutPage.Click Confirmer
    Location Should Be    https://ssid-testing-agency.github.io/Lab.qa/#/checkout/payment
    checkoutPage.Remplir Formulaire Payer    1111 1111 1111 1111    1229    123    LL LL 
    Wait Until Location Is    https://ssid-testing-agency.github.io/Lab.qa/#/checkout/confirmation
    Location Should Be    https://ssid-testing-agency.github.io/Lab.qa/#/checkout/confirmation
    ${message}=    checkoutPage.Get Commande Confirmer Message
    Should Contain    ${message}    Commande confirmée !    


    





   

     
    





    


