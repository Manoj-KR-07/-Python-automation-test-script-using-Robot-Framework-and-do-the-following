*** Settings ***
Library    SeleniumLibrary
Suite Setup    Setup Browser
Suite Teardown    Close Browser

*** Variables ***
${URL}    https://qutrix.io
${BROWSER}    chrome
${SCREENSHOT_PATH}      ./self_assesment.png

*** Test Cases ***
Open Qutrix Website and Navigate to Career Page
    Go To    ${URL}
    Wait Until Element Is Visible    xpath=//a[text()='Company']    10 seconds
    Click Element    xpath=//a[text()='Company']
    Wait Until Element Is Visible    xpath=//a[text()='Explore Career']    10 seconds
    Click Element    xpath=//a[text()='Explore Career']

Click and Capture Screenshot of Self-Assessment Process
    Wait Until Element Is Visible    xpath=//*[@id="content"]/article/div/div/section[3]/div/div/div/div[2]/div/div    10 seconds
    Scroll Element Into View    xpath=//*[@id="content"]/article/div/div/section[3]/div/div/div/div[2]/div/div/a
    Wait Until Element Is Visible    xpath=//*[@id="content"]/article/div/div/section[3]/div/div/div/div[2]/div/div     10 seconds
    Click Element    xpath=//*[@id="content"]/article/div/div/section[3]/div/div/div/div[2]/div/div/a
    Wait Until Element Is Visible      xpath=//*[@id="content"]/article/div/div/section[3]/div/div/div/div[2]/div/div/a     20 seconds
    Scroll Element Into View    xpath=//*[@id="content"]/article/div/div/section[3]/div/div/div/div[2]/div/div/a
    Capture Page Screenshot     ${SCREENSHOT_PATH}

*** Keywords ***
Setup Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
