*** Settings ***
Documentation    Checkout Page
Library    SeleniumLibrary

*** Variables ***
${prenom}    id:first-name
${nom}    id:last-name
${email}    id:email
${code-postal}    id:postal-code
${continuer-btn}    css:[data-testid="checkout-continue"]

${confirmer-btn}    css:[data-testid="checkout-finish"]

${numeroCarte}    css:[data-testid="payment-card-number"]
${dateExpiration}    id:card-expiry
${cryptogramme}    id:card-cvc
${nom-porteur}    id:card-name
${payer-btn}    css:[data-testid="payment-submit"]

${commandeConfirmer-msg}    css:[data-testid="confirmation-title"]

*** Keywords ***
Fill Prenom
    [Arguments]    ${p}
    Input Text    ${prenom}    ${p}
Fill Nom
    [Arguments]    ${n}
    Input Text    ${nom}    ${n}
Fill Email
    [Arguments]    ${e}
    Input Text    ${email}    ${e}
Fill Code Postal
    [Arguments]    ${cp}
    Input Text    ${code-postal}    ${cp}
Click Continuer
    Click Button    ${continuer-btn}
Remplir Formulaire
    [Arguments]    ${p}    ${n}    ${e}    ${cp}    
    Fill Prenom    ${p}
    Fill Nom    ${n}
    Fill Email    ${e}
    Fill Code Postal    ${cp}
    Click Continuer

Click Confirmer
    Click Button    ${confirmer-btn}

Fill Numero Carte
    [Arguments]    ${p}
    Input Text    ${numeroCarte}    ${p}
Fill Date Expiration
    [Arguments]    ${p}
    Input Text    ${dateExpiration}    ${p}
Fill Cryptogramme
    [Arguments]    ${p}
    Input Text    ${cryptogramme}    ${p}
Fill Nom Porteur
    [Arguments]    ${p}
    Input Text    ${nom-porteur}    ${p}
Click Payer
    Click Button    ${payer-btn}
Remplir Formulaire Payer
    [Arguments]    ${p}    ${n}    ${e}    ${cp}    
    Fill Numero Carte    ${p}
    Fill Date Expiration    ${n}
    Fill Cryptogramme    ${e}
    Fill Nom Porteur    ${cp}
    Click Payer

Get Commande Confirmer Message
    ${msg}=    Get Text    ${commandeConfirmer-msg}    
    RETURN    ${msg}
    
    



