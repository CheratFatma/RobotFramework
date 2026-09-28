*** Settings ***
Documentation    Cart Page
Library    SeleniumLibrary

*** Variables ***
${code-promo}    id:promo-input
${commander}    css:[data-testid="cart-checkout-button"]


*** Keywords ***
Fill code Promo
    [Arguments]    ${cp}
    Input Text    ${code-promo}    ${cp}
Click Commander
    Click Button    ${commander}




