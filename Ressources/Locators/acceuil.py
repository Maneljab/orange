admin='xpath://a[contains(@href, "index.php/admin/viewAdminModule")]'
pim='xpath://a[contains(@href, "href="/web/index.php/pim/viewPimModule"")]'
Leav='xpath://a[contains(@href, "href="/web/index.php/leave/viewLeaveModule"")]'


#user
userplus= "xpath://button[@type='button' and contains(concat(' ', @class, ' '), ' oxd-button ') and contains(concat(' ', @class, ' '), ' oxd-button--medium ') and contains(concat(' ', @class, ' '), ' oxd-button--secondary ')]"
userrest="xpath://button[@type='button' and contains(@class, 'oxd-button') and contains(@class, 'oxd-button--medium') and contains(@class, 'oxd-button--ghost')]"
usersearch="xpath=//button[@type='submit' and contains(@class, 'oxd-button') and contains(@class, 'oxd-button--medium') and contains(@class, 'oxd-button--secondary orangehrm-left-space')]"
userdel="xpath://button[@type='button' and @class='oxd-icon-button oxd-table-cell-action-space']//class='oxd-icon bi-trash'"
userrole="xpath://form[@class='oxd-form']//div[@class='oxd-select-text-input'][contains(text(), 'Admin')]"
employername="xpath://input[@placeholder='Type for hints...']"
userstatut="xpath://form[@class='oxd-form']//div[@class='oxd-select-text-input'][contains(text(), '-- Select --']"
username="xpath://input[@class='oxd-input oxd-input--active' and @autocomplete='off']"
userpassword="xpath://input[@class='oxd-input oxd-input--active' and @type='password']"
userconfirmpassword="xpat://label[text()='Confirm Password']/following-sibling::input[@class='oxd-input oxd-input--active' and @type='password']"
usercancel="xpath://button[@type='button' and @class='oxd-button oxd-button--medium oxd-button--ghost' and text()=' Cancel ']"
usersave="xpath://button[@type='submit' and @class='oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space']"

