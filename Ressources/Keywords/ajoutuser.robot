*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections
Variables    ../Locators/acceuil.py
Variables    ../Locators/user.py
Resource     ../JDD/listeuser.csv
*** Variables ***
${option_xpath}        //form[@class='oxd-form']//div[@class='oxd-select-text-input']//div[@text()='ESS']  
*** Keywords ***
ajoutuser
    [Documentation]    ajouter un utilisateur
    [Tags]    utilisateur
    Wait Until Element Is Visible    ${admin}  timeout=20
    Click Element    ${admin}
    Wait Until Element Is Visible    ${userplus}
    Click Element    ${userplus}
    ${file_content}=    Get File     C:\\orange\\Ressources\\JDD\\listeuser.csv
    ${table}=    Evaluate    [line.split(',') for line in $file_content.splitlines()[1:]]
    FOR    ${row}    IN    @{table}
      ${role}=      Set Variable     ${row}[0]
      ${stat}=      Set Variable     ${row}[1]
      ${emlpoyer}=      Set Variable     ${row}[2]
      ${usernom}=      Set Variable     ${row}[3]
      ${motdepass}=       Set Variable     ${row[4]}
      Wait Until Element Is Visible    ${userrole}
      Log    ${userrole}
      Select From List By Label    ${userrole}    ${role}
      Wait Until Element Is Visible     ${userstatut}
      Select From List By Label      ${userstatut}     ${stat}
      Wait Until Element Is Visible    ${employername}
      Input Text    ${employername}     ${emlpoyer}
      Wait Until Element Is Visible    ${username}
      Input Text    ${username}    ${usernom}
      Wait Until Element Is Visible    ${userpassword}
      Input Password    ${userpassword}    ${motdepass}
      Input Password    ${userconfirmpassword}    ${motdepass}
      Click Button    ${usersave}
      Alert Should Be Present
   END
