*** Settings ***
Documentation    page de register
Library    SeleniumLibrary

*** Variables ***
${nom}    id:nom
${prenom}    id:prenom
${email}    id:email
${telephone}    id:telephone
${adresse}    id:adresse
${ville}    id:ville
${code-postal}    id:code_postal
${pays}    id:pays
${mdp}    id:mot_de_passe
${confirm-mdp}    id:confirmer_mot_de_passe
${register-btn}    class:btn.btn-fuchsia
${success-msg}    class:alert.alert-success

*** Keywords ***
Fill Nom
    [Arguments]    ${u}
    Input Text    ${nom}    ${u}
Fill Prenom
    [Arguments]    ${u}
    Input Text    ${prenom}    ${u}
Fill Email
    [Arguments]    ${u}
    Input Text    ${email}    ${u}
Fill Telephone
    [Arguments]    ${u}
    Input Text    ${telephone}    ${u}
Fill adresse
    [Arguments]    ${u}
    Input Text    ${adresse}    ${u}
Fill Ville
    [Arguments]    ${u}
    Input Text    ${ville}    ${u}
Fill Code Postal
    [Arguments]    ${u}
    Input Text    ${code-postal}    ${u}
Select Pays
    Select From List By Label    ${pays}    France métropolitaine        

Fill Mot De Passe
    [Arguments]    ${u}
    Input Text    ${mdp}    ${u}
Fill Confirmer Mot De Passe
    [Arguments]    ${u}
    Input Text    ${confirm-mdp}    ${u}
Click Register
    Scroll Element Into View    ${register-btn}
    Click Button    ${register-btn}
Get Success Message
    Wait Until Element Is Visible    ${success-msg}    10s
    ${msg}=    Get Text    ${success-msg}
    RETURN    ${msg}
RegiSter
    [Arguments]    ${n}    ${p}    ${e}    ${t}    ${a}    ${v}    ${cp}    ${mdp1}    ${mdp2}
    Fill Nom    ${n}
    Fill Prenom    ${p}
    Fill Email    ${e}
    Fill Telephone    ${t}
    Fill adresse    ${a}
    Fill Ville    ${v}
    Fill Code Postal    ${cp}
    Select Pays
    Fill Mot De Passe    ${mdp1}
    Fill Confirmer Mot De Passe    ${mdp2} 
    Click Register 







    


