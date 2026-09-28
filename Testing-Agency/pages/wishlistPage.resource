*** Settings ***
Documentation    wishlist Page
Library    SeleniumLibrary

*** Variables ***
${add-to-cart-btn}    css:[data-testid="wishlist-add-to-cart-sauce-backpack"]
${cart}    css:[data-testid="cart-icon"]

*** Keywords ***
Click Add To Cart
    Click Button    ${add-to-cart-btn}
Get Text Cart
    ${number}=    Get Text    ${cart}
    RETURN    ${number}
Click Wish List
    Click Element    ${cart}





