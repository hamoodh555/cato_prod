*** Settings ***
Library           SeleniumLibrary
Library           Selenium2Library

*** Variables ***
${url}            https://cvm.xerago.net/
${browser}        chrome
${excelfile}      I:/testdata.xls
${control_val}    15
${Program_title}    Program for Cross-sell Savings Accounts Volatile account balances
${Creator_status_rej}    Rejected
${Creator_status_apprv}    Approved
${Creator_status_abrt}    Aborted
${alert_txt}      Program already exists for the given period

*** Test Cases ***
Admin login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox


    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 

    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    
    SeleniumLibrary.Input Text    id=form_password    
    SeleniumLibrary.Click Button    id=form_login
    Sleep    30s
	SeleniumLibrary.Wait Until Page Contains Element	xpath=.//span[@class='logo replacea']	10s
    SeleniumLibrary.Close Browser

Creator login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox


    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 

    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    
    SeleniumLibrary.Input Text    id=form_password    
    SeleniumLibrary.Click Button    id=form_login
    Sleep    30s
	SeleniumLibrary.Wait Until Page Contains Element	xpath=.//span[@class='logo replacea']	10s
    SeleniumLibrary.Close Browser

Reviewer login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox


    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 

    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    
    SeleniumLibrary.Input Text    id=form_password    
    SeleniumLibrary.Click Button    id=form_login
    Sleep    30s
	SeleniumLibrary.Wait Until Page Contains Element	xpath=.//span[@class='logo replacea']	10s
    SeleniumLibrary.Close Browser

AdminCreator login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox


    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 

    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    
    SeleniumLibrary.Input Text    id=form_password    
    SeleniumLibrary.Click Button    id=form_login
    Sleep    30s
	SeleniumLibrary.Wait Until Page Contains Element	xpath=.//span[@class='logo replacea']	10s
    SeleniumLibrary.Close Browser

Complainceshead login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox


    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 

    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    
    SeleniumLibrary.Input Text    id=form_password    
    SeleniumLibrary.Click Button    id=form_login
    Sleep    30s
	SeleniumLibrary.Wait Until Page Contains Element	xpath=.//span[@class='logo replacea']	10s
    SeleniumLibrary.Close Browser

Creatorhead login
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox


    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
    SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 

    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    
    SeleniumLibrary.Input Text    id=form_password    
    SeleniumLibrary.Click Button    id=form_login
    Sleep    30s
	SeleniumLibrary.Wait Until Page Contains Element	xpath=.//span[@class='logo replacea']	10s
    SeleniumLibrary.Close Browser
    
To create a new campaign by manual flow	
    
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}   add_argument    headless
    Call Method    ${chrome_options}   add_argument    disable-gpu
    Call Method    ${chrome_options}   add_argument    no-sandbox


    SeleniumLibrary.Create WebDriver  Chrome  chrome_options=${chrome_options}
	SeleniumLibrary.Set Window Size    1920    1080
    SeleniumLibrary.Go to    ${url} 
    SeleniumLibrary.Wait Until Element Is Enabled    //div[@class='login-footertxt']/p    40s
    SeleniumLibrary.Input Text    id=form_username    
    SeleniumLibrary.Input Text    id=form_password    
    SeleniumLibrary.Click Button    id=form_login
    Sleep    20s
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//li[@ng-click='createNewProgram()']    60s
    SeleniumLibrary.Click Element    xpath=.//li[@ng-click='createNewProgram()']
    Sleep    20s
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//div[@id='productName'][contains(.,'Savings Accounts')]    40s
    SeleniumLibrary.Click Element    xpath=.//div[@id='productName'][contains(.,'Savings Accounts')]
    Sleep    20s
    SeleniumLibrary.Click Element    xpath=.//div[@class='objectivelist']/div[contains(.,'Cross-sell')]
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=.//div[@class='approach-head']/div[contains(.,'Volatile account balances')]    40s
    SeleniumLibrary.Click Element    xpath=.//div[@class='approach-head']/div[contains(.,'Volatile account balances')]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=.//div[@id='fromDate']//div/a[2]
    SeleniumLibrary.Click Element    xpath=(.//table[@class='ui-datepicker-calendar']/tbody/tr/td[contains(.,'3')])[1]
    SeleniumLibrary.Click Element    xpath=.//input[@name='saveChanges']
    Sleep    30s
    SeleniumLibrary.Click Element    xpath=.//a[@title='Check Count']
    Sleep    15s
    SeleniumLibrary.Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//div[@ng-show='showRecordCount']    15s
    SeleniumLibrary.Wait Until Page Contains Element    xpath=.//div[@ng-repeat='collection in productPercentage'][2]    30s
    SeleniumLibrary.Click Element    xpath=.//div[@ng-repeat='collection in productPercentage'][2]
    SeleniumLibrary.Close Browser