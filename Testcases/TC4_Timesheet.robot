*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${base_url}  http://127.0.0.1:8000/
${browser}   Chrome

*** Test Cases ***
TC1_Login_Test
    open browser    ${base_url}  ${browser}
    maximize browser window
    set selenium implicit wait   3

    input text  xpath://*[@id="id_employee_id"]  PSI-6789
    input text  xpath://*[@id="id_email"]   mh@gmail.com
    input text  xpath://*[@id="id_password"]  Darshan@1
    click element   xpath:/html/body/div/div/div/div/div/div/div[2]/div/form/button
    # sleep   3

TC2_Dashboard_Open_Test
    click element   xpath://*[@id="accordionSidebar"]/li[1]/a/span
    Sleep   3

TC3_Add_Timesheet1
    click element   xpath://*[@id="accordionSidebar"]/li[3]/a
    click element   xpath://*[@id="collapseUtilities"]/div/a[1]
    input text   xpath://*[@id="task"]   Automation
    sleep    3
    click element   xpath://*[@id="Dates"]
    click element   xpath://*[@id="page-top"]/div[3]/div[1]/table/tbody/tr[4]/td[5]
    sleep   3
    input text   xpath://*[@id="Description"]   "HR-OS Automation testing task"
    sleep   3
    click element   xpath://*[@id="content"]/div/div[2]/div/form/div/div[4]/input
    sleep   3

TC3_Add_Timesheet2
    click element   xpath://*[@id="accordionSidebar"]/li[3]/a
    click element   xpath://*[@id="collapseUtilities"]/div/a[1]
    input text   xpath://*[@id="task"]   Automation
    sleep   3
    click element   xpath://*[@id="Dates"]
    click element   xpath://*[@id="page-top"]/div[3]/div[1]/table/tbody/tr[4]/td[6]
    sleep   3
    input text   xpath://*[@id="Description"]
    sleep   3
    click element   xpath://*[@id="content"]/div/div[2]/div/form/div/div[4]/input
    sleep   3

TC4_Close_Browser
    close all browsers
    sleep   3