*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${Browser}  chrome
${Base_url}  http://127.0.0.1:8000/signup

*** Test Cases ***
TC1_Sign_UP_Positive_1
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Darshan
    input text    xpath://*[@id="exampleLastName"]   mh
    input text    xpath://*[@id="exampleInputEmail"]   mh@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6789
    input text    xpath://*[@id="exampleInputPassword"]  Darshan@1
    input text    xpath://*[@id="exampleRepeatPassword"]  Darshan@1

    sleep    3
    click element   //button[@type='submit']
    sleep   10

    [teardown]  close browser

TC2_Sign_UP_Positive_2
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Kalpesh
    input text    xpath://*[@id="exampleLastName"]   Dahake
    input text    xpath://*[@id="exampleInputEmail"]   kalpesh.dahake@gmail.com
    input text    xpath://*[@id="empid"]  PSI-1234
    input text    xpath://*[@id="exampleInputPassword"]  Kalpesh@18
    input text    xpath://*[@id="exampleRepeatPassword"]  Kalpesh@18

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC3_Sign_UP_Positive_3
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Vijay
    input text    xpath://*[@id="exampleLastName"]   Jadhav
    input text    xpath://*[@id="exampleInputEmail"]   Vijayjadhav18@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6734
    input text    xpath://*[@id="exampleInputPassword"]  Viju#3456
    input text    xpath://*[@id="exampleRepeatPassword"]  Viju#3456

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC4_Sign_UP_Positive_4
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Jayanta
    input text    xpath://*[@id="exampleLastName"]    Dhane
    input text    xpath://*[@id="exampleInputEmail"]   jayanta.dhane@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6744
    input text    xpath://*[@id="exampleInputPassword"]  Jayatu@14
    input text    xpath://*[@id="exampleRepeatPassword"]  Jayatu@14

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC5_Sign_UP_Positive_5
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Ketan
    input text    xpath://*[@id="exampleLastName"]   Jadhav
    input text    xpath://*[@id="exampleInputEmail"]   ketanjadhav@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6734
    input text    xpath://*[@id="exampleInputPassword"]  Ketan@189
    input text    xpath://*[@id="exampleRepeatPassword"]    Ketan@189

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC6_Sign_UP_Negative_1
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Abhijit12
    input text    xpath://*[@id="exampleLastName"]   mh#
    input text    xpath://*[@id="exampleInputEmail"]   mh@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6789
    input text    xpath://*[@id="exampleInputPassword"]  Darshan@1
    input text    xpath://*[@id="exampleRepeatPassword"]  Darshan@1

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC7_Sign_UP_Negative_2
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Darshan
    input text    xpath://*[@id="exampleLastName"]   Gowda13
    input text    xpath://*[@id="exampleInputEmail"]   mh@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6789
    input text    xpath://*[@id="exampleInputPassword"]  Darshan@1
    input text    xpath://*[@id="exampleRepeatPassword"]  Darshan@1

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC8_Sign_UP_Negative_3
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Darshan
    input text    xpath://*[@id="exampleLastName"]   mh
    input text    xpath://*[@id="exampleInputEmail"]   vijaya@jadhav@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6789
    input text    xpath://*[@id="exampleInputPassword"]  Darshan@1
    input text    xpath://*[@id="exampleRepeatPassword"]  Darshan@1

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC9_Sign_UP_Negative_4
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Darshan
    input text    xpath://*[@id="exampleLastName"]   mh
    input text    xpath://*[@id="exampleInputEmail"]   mh@gmail.com
    input text    xpath://*[@id="empid"]  TL-3289
    input text    xpath://*[@id="exampleInputPassword"]  Darshan@1
    input text    xpath://*[@id="exampleRepeatPassword"]  Darshan@1

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC10_Sign_UP_Negative_5
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Darshan
    input text    xpath://*[@id="exampleLastName"]   mh
    input text    xpath://*[@id="exampleInputEmail"]   mh@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6789
    input text    xpath://*[@id="exampleInputPassword"]  Rajan@12
    input text    xpath://*[@id="exampleRepeatPassword"]  Darshan@1

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC11_Sign_UP_Negative_6
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Darshan
    input text    xpath://*[@id="exampleLastName"]   mh
    input text    xpath://*[@id="exampleInputEmail"]   mh@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6789
    input text    xpath://*[@id="exampleInputPassword"]  Darshan@1
    input text    xpath://*[@id="exampleRepeatPassword"]  Soham#13

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC12_Sign_UP_Negative_6
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]
    input text    xpath://*[@id="exampleLastName"]   mh
    input text    xpath://*[@id="exampleInputEmail"]   mh@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6789
    input text    xpath://*[@id="exampleInputPassword"]  Darshan@1
    input text    xpath://*[@id="exampleRepeatPassword"]  Darshan@1

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC13_Sign_UP_Negative_7
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]   Vijay
    input text    xpath://*[@id="exampleLastName"]
    input text    xpath://*[@id="exampleInputEmail"]   mh@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6789
    input text    xpath://*[@id="exampleInputPassword"]  Darshan@1
    input text    xpath://*[@id="exampleRepeatPassword"]  Darshan@1

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC14_Sign_UP_Negative_8
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]   Ravi
    input text    xpath://*[@id="exampleLastName"]   mahant
    input text    xpath://*[@id="exampleInputEmail"]   mh@gmail.com
    input text    xpath://*[@id="empid"]  PSI@1234
    input text    xpath://*[@id="exampleInputPassword"]  Darshan@1
    input text    xpath://*[@id="exampleRepeatPassword"]  Darshan@1

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC15_Sign_UP_Negative_9
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]    Raju
    input text    xpath://*[@id="exampleLastName"]   mh
    input text    xpath://*[@id="exampleInputEmail"]   mh@gmail.com
    input text    xpath://*[@id="empid"]  PSI-6789
    input text    xpath://*[@id="exampleInputPassword"]  Darshan@1#456$890123
    input text    xpath://*[@id="exampleRepeatPassword"]  Darshan@1#456$890123

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser

TC16_Sign_UP_Negative_10
    [setup]  open browser     ${Base_url}     ${Browser}
    maximize browser window
    set selenium implicit wait    3

    input text    xpath://*[@id="exampleFirstName"]   Sunny
    input text    xpath://*[@id="exampleLastName"]   July
    input text    xpath://*[@id="exampleInputEmail"]   kalesh@dahake.xyz
    .com
    input text    xpath://*[@id="empid"]  PSI-6789
    input text    xpath://*[@id="exampleInputPassword"]  Darshan@1
    input text    xpath://*[@id="exampleRepeatPassword"]  Darshan@1

    sleep    3
    click element    xpath:/html/body/div/div/div/div/div[2]/div/form/button]
    sleep   10

    [teardown]  close browser
