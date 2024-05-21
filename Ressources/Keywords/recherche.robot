*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem
Variables    ../Locators/user.py
Variables      ../JDD/recherche.py

*** Keywords ***
Reset
    Wait Until Element Is Visible     ${namerecherche}
    Input Text    ${namerecherche}    "Admin"
    Wait Until Element Is Visible    ${nameuserrole}    
    Select From List By Label    admin
    Wait Until Element Is Visible    ${nameemployer}
    Input Text      ${nameemployer}     alalaa
    Wait Until Element Is Visible    ${statutrecherche}
    Select From List By Label    ${statutrecherche}    Enabled
    Wait Until Element Is Visible    ${userrest}
    Click Button    ${usereset}
    Should Be Empty    ${nameemployer} 
    Should Be Empty    ${namerecherche} 
    Should Be Empty     ${statutrecherche} 
    Should Be Empty     ${nameuserrole}
searchname
    Wait Until Element Is Visible    ${namerecherche}
    Input Text    ${namerecherche}     ${nom}
    Wait Until Element Is Visible    ${usersearch}
    Click Button    ${usersearch}
   
    Wait Until Page Contains Element     ${usernameresultat}
    Element Should Be Visible    ${usernameresultat}
searchrole
    Wait Until Element Is Visible    ${nameuserrole}
    Select From List By Label    ${nameuserrole}    ${role}
    Wait Until Element Is Visible    ${usersearch}
    Click Button    ${usersearch}
    Wait Until Page Contains Element     ${userroleresultat}
    Element Should Be Visible    ${userroleresultat}
searchemlpoyer
    Wait Until Element Is Visible     ${nameemployer}
    Input Text    ${nameemployer}      ${employer}    
    Wait Until Element Is Visible    ${usersearch}
    Click Button    ${usersearch}
    Wait Until Page Contains Element      ${employerresultat}
    Element Should Be Visible    ${employerresultat}
searchstatut
    Wait Until Element Is Visible     ${statutrecherche}
    Select From List By Label     ${statutrecherche}    ${statut}
    Wait Until Element Is Visible    ${usersearch}
    Click Button    ${usersearch}
    Wait Until Page Contains Element      ${staturesultat}
    Element Should Be Visible     ${staturesultat}
Search_user
    ${rows}    Get WebElements    ${tabresultat}
    FOR    ${row}    IN    @{rows}
        ${usern}    Get Text    ${row}//${usernameresultat}
        ${userr}    Get Text    ${row}//${userroleresultat}
        ${userst}    Get Text    ${row}//${staturesultat}
        ${emp}     Get Text    ${row}//${employerresultat}
        Run Keyword If    '${namerecherche}'=='${usern}' and '${nameuserrole}'=='${userr}' and '${userst}'=='${userstatut}' and  '${emp}'=='${nameemployer}'  
               Set Test Variable    ${row_found}    ${row}
        Run Keyword If    '${row_found}' == ''  
             Fail    
    END
suprimer
    ${rows}    Get WebElements    ${tabresultat}
    ${usern}    Get Text     ${usernameresultat}
    ${userr}    Get Text    ${userroleresultat}
    ${userst}    Get Text    ${staturesultat}
<<<<<<< HEAD
    ${emp}      Get Text    ${employerresultat}
    Wait Until Element Is Visible    ${userdel}
=======
    ${emp}     Get Text    ${employerresultat}
>>>>>>> 7bc7ce97fae58db6c53df89fcdbfefb5c851bf7b
    Click Button    ${userdel}
    Wait Until Element Is Enabled    ${confirmationsupr}
    Click Button    ${confirmationsupr}
    FOR    ${row}    IN    @{rows}
        Run Keyword Unless    '${usernameresultat}'!='${usern}'      Fail    User ${usern} existe encore
    END