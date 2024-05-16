*** Settings ***
Library    SeleniumLibrary
Resource    ../Ressources/Keywords/authentification.robot
Resource    ../Ressources/Keywords/comun.robot
Resource    ../Ressources//Keywords/authentification.robot

*** Test Cases ***
authentificationok
    [Documentation]    authentification ok
    [Tags]    smoke
    openpage
    login
    Close Browser

authentificationkop
    [Documentation]    login mot de passe invalidee
    [Tags]    passwordinvalid
    openpage
    loginkop
    Close Browser
authentificationko
    [Documentation]    login mot de passe et user invalide
    [Tags]     user_password_invalid
    openpage
    loginko
    Close Browser


    