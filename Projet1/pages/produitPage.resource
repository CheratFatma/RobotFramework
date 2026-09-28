*** Settings ***
Documentation    page de produit
Library    SeleniumLibrary

*** Variables ***
${produit-btn}    id:add-to-cart-sauce-labs-backpack
${remove-btn}    css:[data-test='remove-sauce-labs-backpack']
${shopping-badge}    css:[data-test="shopping-cart-badge"]
${shopping-btn}    css:[data-test="shopping-cart-link"]

*** Keywords ***

Click Produit
    Click Button    ${produit-btn}
Get Remove
    Element Should Be Visible    ${remove-btn}
Get Badge Text
    ${badge}=    Get Text    ${shopping-badge}
    RETURN    ${badge}
Click Shopping Button
    Click Element    ${shopping-btn}
