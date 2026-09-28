*** Settings ***
Documentation    fichier de jdd pour login
Library    SeleniumLibrary
Library    DataDriver    ../data/jdd.csv    dialect=excel    encoding=utf-8
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

*** Test Cases ***    
Login_with_csv  


    
    
    

