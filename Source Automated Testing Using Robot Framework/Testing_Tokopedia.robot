*** Settings ***
Library           Selenium2Library
Library           DateTime
Resource          Resource_Tokopedia.txt
Library           AutoItLibrary

*** Test Cases ***
TC - Contact Us
    [Documentation]    This is test case to open contact us up information
    [Setup]
    Open Browser    https://www.tokopedia.com/contact-us#step1    firefox
    Click Element    xpath=//div[@id='problem-list-c1']/a
    Sleep    2s
    Click Element    xpath=//div[@id='solution-list-c1']/a[6]
    Sleep    2s
    Wait Until Element Is Visible    xpath=//div[@id="step6"]/div[3]/a[2]    10s
    Click Element    xpath=//div[@id="step6"]/div[3]/a[2]
    sleep    2s
    Input Text    xpath=//*[@id="ticket_reply_msg"]    ${DETAIL PROBLEM}
    Input Text    xpath=//*[@id="full_name"]    ${FULL NAME}
    Input Text    xpath=//*[@id="user_email"]    ${EMAIL}
    Choose File    xpath=//*[@id="pickfiles-nav1"]    ${CURDIR}${/}1.png
    Run    ${AUTOIT}
    Choose File    xpath=//*[@id="pickfiles-nav1"]    ${CURDIR}${/}1.png
    Run    ${AUTOIT1}
    Choose File    xpath=//*[@id="pickfiles-nav1"]    ${CURDIR}${/}1.png
    Run    ${AUTOIT2}
    Choose File    xpath=//*[@id="pickfiles-nav1"]    ${CURDIR}${/}1.png
    Run    ${AUTOIT3}
    Choose File    xpath=//*[@id="pickfiles-nav1"]    ${CURDIR}${/}1.png
    Run    ${AUTOIT4}
