*** Settings ***
Library          SeleniumLibrary
Test TearDown    Close Browser

*** Test Cases ***
ค้นหาข้อมูลจาก google
    ผู้ใช้งานเข้ามาค้นหาข้อมูลที่ google
    ค้นหาคำว่า demo
    ผู้ใช้งานต้องพบคำว่า demo

*** Keywords ***
ผู้ใช้งานต้องพบคำว่า demo
    Wait Until Page Contains                demo

ค้นหาคำว่า demo
    Input Text                              name=q                   demo
    Press Keys                              name=q                   RETURN
ผู้ใช้งานเข้ามาค้นหาข้อมูลที่ google
    Open Browser                            http://www.google.com
    Maximize Browser Window