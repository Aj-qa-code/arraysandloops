*** Settings ***
Library     String
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${homepage}     automationpractice.com/index.php
${scheme}       http
${testUrl}      ${scheme}://${homepage}

*** Keywords ***
Open Homepage
    Open Browser    ${testUrl}      ${browser}


*** Test Case ***
C001 Hacer Click en Contenedores
    Open Homepage
    Set Global Variable     @{nombredecontenedores}     xpath=//*[@id="homefeatured"]/li[1]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[2]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[3]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[4]/div/div[2]/h5/a
    :FOR    ${element}   IN     @{nombredecontenedores}
    /   Run Keyword If     '${element}'=='//*[@id="homefeatured"]/li[4]/div/div[2]/h5/a'    Exit For Loop
    /   Click Element   ${element}
    /   Wait Until Element Is Visible   xpath=//*[@id="bigpic"]
    /   Click Element   xpath=//*[@id="header_logo"]/a/img
    /   Close Browser
