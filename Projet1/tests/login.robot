*** Settings ***
Documentation    fichier de test login
Library    SeleniumLibrary
Resource    ../resources/keyword.resource
Resource    ../pages/loginPage.resource
Test Setup    Init Browser
Test Teardown    Fermer Browser

*** Test Cases ***
loginValid
    [Documentation]    test de login avec identifiants valides
    [Tags]    valid    e2e
    #Open Browser        https://www.saucedemo.com/    chrome
    #Input Text    id:user-name    standard_user
    #Input Text    id:password    secret_sauce
    #${url}=    Get Location
    #Click Button    id:login-button
    loginPage.Connexion    standard_user    secret_sauce       
    Location Should Be    https://www.saucedemo.com/inventory.html
    ${url}=    Get Location
    Should Be Equal As Strings    ${url}    https://www.saucedemo.com/inventory.html
    #Close Browser
    

loginInvalid
    [Documentation]    test de login avec identifiants invalides
    [Tags]    invalid    
    #Open Browser        https://www.saucedemo.com/    chrome
    Input Text    id:user-name    standard_user_fake
    Input Text    id:password    secret_sauce_fake
    Wait Until Element Is Visible    id:login-button    10s    
    Click Button    id:login-button
    Element Should Be Visible    css:[data-test="error"]
    Page Should Contain    Epic sadface: Username and password do not match any user in this service
    ${error}=    Get Text    css:[data-test="error"]
    Should Contain    ${error}    Epic sadface: Username and password do not match any user in this service 
    #Close Browser 
 
     
    





    


