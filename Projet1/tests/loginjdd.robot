*** Settings ***
Documentation    fichier de jdd pour login
Library    SeleniumLibrary
Resource    ../resources/keyword.resource
Resource    ../pages/loginPage.resource
Test Setup    Init Browser
Test Teardown    Fermer Browser
Test Template    data driven test  

*** Keywords ***
data driven test
    [Arguments]    ${userna}    ${passw}    ${result}
    loginPage.Connexion    ${userna}    ${passw}
    IF    "${result}"=="success"
        Location Should Be    https://www.saucedemo.com/inventory.html
    ELSE
        ${error}=    loginPage.Get Error Text
        Should Contain    ${error}    Epic sadface: Username and password do not match any user in this service   
    END

*** Test Cases ***    userna    passw    result
uvpv    standard_user    secret_sauce    success
uvpi    standard_user    secret_sauce_fake    failure
uipi    standard_user_fake    secret_sauce_fake    failure
uipv    standard_user_fake    secret_sauce    failure

    
    
    

