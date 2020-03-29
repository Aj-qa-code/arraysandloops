*** Settings ***
Library     String
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${homepage}     automationpractice.com/index.php
${scheme}       http
${testUrl}      ${scheme}://${homepage}
