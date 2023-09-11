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
    sleep   3

TC2_Dashboard_Open_Test
    click element   xpath://*[@id="accordionSidebar"]/li[1]/a/span
    Sleep   3

TC3_Add_Time-off_Test_PTO
    click element   xpath://*[@id="accordionSidebar"]/li[2]/a
    click element   xpath:(//a[@class='collapse-item'])[1]
    Click Element   xpath://select[@class='form-control form-select']
    Click Element   xpath://option[@value='1']
    # Select From List by Value   xpath:////*[@id="timeoff_type"]  PTO
    sleep   3
    click element   xpath://*[@id="Dates"]
    click element   xpath://*[@id="page-top"]/div[3]/div[1]/table/tbody/tr[3]/td[2]
    sleep   3
    input text   xpath://*[@id="subject"]   Planned_Time_Off
    input text   xpath://*[@id="Description"]   For Personal Work
    sleep   3
    click element   xpath://*[@id="content"]/div/div[2]/div/form/div/div[5]/input

TC4_Add_Time-off_Test_Sick_Leave
    click element   xpath://*[@id="accordionSidebar"]/li[2]/a
    click element   xpath://*[@id="collapseTwo"]/div/a[1]
    sleep   3
    Select From List by Value   xpath:////*[@id="timeoff_type"]  Sick Leave
    sleep   3
    click element   xpath://*[@id="Dates"]
    click element   xpath:////*[@id="page-top"]/div[3]/div[1]/table/tbody/tr[3]/td[3]
    sleep   3
    input text   xpath://*[@id="subject"]   Sick_Leave
    input text   xpath://*[@id="Description"]   Health is not okay
    sleep   3
    click element   xpath://*[@id="content"]/div/div[2]/div/form/div/div[5]/input

TC5_Add_Time-off_Test_WFH
    click element   xpath://*[@id="accordionSidebar"]/li[2]/a
    click element   xpath://*[@id="collapseTwo"]/div/a[1]
    sleep   3
    Select From List by Value   xpath:////*[@id="timeoff_type"]  WFH
    sleep   3
    click element   xpath://*[@id="Dates"]
    click element   xpath://*[@id="page-top"]/div[3]/div[1]/table/tbody/tr[3]/td[4]
    sleep   3
    input text   xpath://*[@id="subject"]   WFH
    input text   xpath://*[@id="Description"]   Work from Home
    sleep   3
    click element   xpath://*[@id="content"]/div/div[2]/div/form/div/div[5]/input

TC6_Add_Time-off_Test_LOP
    click element   xpath://*[@id="accordionSidebar"]/li[2]/a
    click element   xpath://*[@id="collapseTwo"]/div/a[1]
    sleep   3
    Select From List by Value   xpath:////*[@id="timeoff_type"]  LOP
    sleep   3
    click element   xpath://*[@id="Dates"]
    click element   xpath://*[@id="page-top"]/div[3]/div[1]/table/tbody/tr[3]/td[5]
    sleep   3
    input text   xpath://*[@id="subject"]   LOP
    input text   xpath://*[@id="Description"]   Loss of Pay
    sleep   3
    click element   xpath://*[@id="content"]/div/div[2]/div/form/div/div[5]/input

TC7_Close_Window
    close all browsers