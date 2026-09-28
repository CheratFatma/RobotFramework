*** Settings ***
Documentation    Catalog Page
Library    SeleniumLibrary

*** Variables ***
${add-to-wish-list}    css:[data-testid="wishlist-btn-sauce-backpack"]
${wish-list}    css:[data-testid="wishlist-icon"]


*** Keywords ***
Add To WishList
    Click Element    ${add-to-wish-list}
Get Text Wish List
    ${number}=    Get Text    ${wish-list}
    RETURN    ${number}
Click Wish List
    Click Element    ${wish-list}






