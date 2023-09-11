*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${base_url}  http://127.0.0.1:8000/
${browser}   chrome

*** Test Cases ***
TC1_Login_Positive_Test
    open browser    {base_url}  {browser}
    maximize browser window
    set selenium implicit wait   3

    input text  xpath://*[@id="id_employee_id"]  PSI-6789
    input text  xpath://*[@id="id_email"]   mh@gmail.com
    input text  xpath://*[@id="id_password"]  Darshan@1
    click element   xpath:/html/body/div/div/div/div/div/div/div[2]/div/form/button
    sleep   3
    close browser

TC2_Login_Negative_Test1
    open browser    {base_url}  {browser}
    maximize browser window
    set selenium implicit wait   3

    input text  xpath://*[@id="id_employee_id"]  PSI-3234
    input text  xpath://*[@id="id_email"]   mh@gmail.com
    input text  xpath://*[@id="id_password"]  Darshan@1
    click element   xpath:/html/body/div/div/div/div/div/div/div[2]/div/form/button
    sleep   3
    close browser

TC3_Login_Negative_Test2
    open browser    {base_url}  {browser}
    maximize browser window
    set selenium implicit wait   3

    input text  xpath://*[@id="id_employee_id"]  PSI-3234
    input text  xpath://*[@id="id_email"]   vijay.jadhav@gmail.com
    input text  xpath://*[@id="id_password"]  Darshan@1
    click element   xpath:/html/body/div/div/div/div/div/div/div[2]/div/form/button
    sleep   3
    close browser

TC4_Login_Negative_Test3
    open browser    {base_url}  {browser}
    maximize browser window
    set selenium implicit wait   3

    input text  xpath://*[@id="id_employee_id"]  PSI-3234
    input text  xpath://*[@id="id_email"]   mh@gmail.com
    input text  xpath://*[@id="id_password"]  Kalpesh@18
    click element   xpath:/html/body/div/div/div/div/div/div/div[2]/div/form/button
    sleep   3
    close browser
