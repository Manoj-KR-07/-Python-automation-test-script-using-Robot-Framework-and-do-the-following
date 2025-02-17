*** Settings ***
Library     OperatingSystem
Library     Process

*** Test Cases ***
Capture IP Address
    Run DOS Command    ipconfig | findstr "IPv4"
    ${output}=         Run And Return Rc And Output    ipconfig | findstr "IPv4"
    Log                ${output}

*** Keywords ***
Run DOS Command
    [Arguments]    ${command}
    Run Process    cmd.exe    /C    ${command}
