*** Settings ***
Documentation    fichier de test produit
Library    SeleniumLibrary
Resource    ../resources/keyword.resource
Test Setup    Init Browser
Test Teardown    Fermer Browser

*** Test Cases ***
parcoursProduit
    [Documentation]    test de parcours produit
    [Tags]    produit
    Connexion    standard_user    secret_sauce
    Click Button    id:add-to-cart-sauce-labs-backpack
    Element Should Be Visible    css:[data-test='remove-sauce-labs-backpack']
    ${cart}=    Get Text    css:[data-test="shopping-cart-badge"]
    Should Contain    ${cart}    1
    Click Element    css:span[data-test='shopping-cart-badge']
    ${url}=    Get Location
    Location Should Be    https://www.saucedemo.com/cart.html



    