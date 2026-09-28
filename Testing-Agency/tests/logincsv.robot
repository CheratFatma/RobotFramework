*** Settings ***
Documentation    fichier de jdd pour login
Library    SeleniumLibrary
Library    DataDriver    ../data/jdd.csv    dialect=excel    encoding=utf-8
Resource    ../pages/logincsvPage.robot
Resource    ../resources/keyword.resource
Test Setup    Init Browser
Test Teardown    Fermer Browser
Test Template    data driven test  

*** Keywords ***
data driven test
    [Arguments]    ${username}    ${password}    ${result}
    logincsvPage.Connexion    ${username}    ${password}
    IF    "${result}"=="success"
        Wait Until Location Is    https://ssid-testing-agency.github.io/Lab.qa/#/catalog    
        Location Should Be    https://ssid-testing-agency.github.io/Lab.qa/#/catalog
    ELSE
        logincsvPage.Error
    END

*** Test Cases ***    
Login_with_csv  


    
    
    

