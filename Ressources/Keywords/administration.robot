*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    ../Locators/acceuil.py

*** Keywords ***
ajoutuser
    [Documentation]    ajouter un utilisateur
    [Tags]    utilisateur
    Click Element    ${admin}
    