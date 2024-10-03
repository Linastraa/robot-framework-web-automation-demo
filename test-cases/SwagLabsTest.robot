*** Settings ***
Resource   object-repository/locators/SwagLabsLocators/swaglabs.robot
Resource   configs/AppiumVariables.robot
Resource    object-repository/locators/SwagLabsLocators/pic.robot

Library    AppiumLibrary
Library    configs/methods.py

*** Test Cases ***

Successful login with credentials
    Open Test Application
    Wait Until Element Is Visible    ${USERNAME_LOCATOR}    10 seconds
    Click Element  ${USERNAME_LOCATOR}
    Wait Until Element Is Visible    ${USERNAME_LOCATOR}    10 seconds
    Input Text    ${USERNAME_LOCATOR}    ${USERNAME}
    Wait Until Element Is Visible    ${PASSWORD_LOCATOR}    10 seconds
    Input Password    ${PASSWORD_LOCATOR}    ${PASSWORD}
    Wait Until Element Is Visible    ${LOGINBUTTON_LOCATOR}    10 seconds
    Click Element    ${LOGINBUTTON_LOCATOR}
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE}    10 seconds
    Element Text Should Be    ${SUCCESS_MESSAGE}    PRODUCTS
    Close Application
    
Cart test
    Open Test Application
    Wait Until Element Is Visible    ${USERNAME_LOCATOR}    10 seconds
    Input Text    ${USERNAME_LOCATOR}    ${USERNAME}
    Input Password    ${PASSWORD_LOCATOR}    ${PASSWORD}
    Click Element    ${LOGINBUTTON_LOCATOR}
    Wait Until Element Is Visible    ${FIRSTITEM_LOCATOR}    10 seconds
    Click Element    ${FIRSTITEM_LOCATOR}
    Wait Until Element Is Visible    ${ADDTOCART_LOCATOR}
    Click Element    ${ADDTOCART_LOCATOR}
    Click Element    ${CART_LOCATOR}
    Wait Until Element Is Visible    ${MYCART_LOCATOR}    10 seconds
    Element Text Should Be    ${MYCART_LOCATOR}    YOUR CART
    Close Application

pic test
    Open Test Application
    Wait Until Element Is Visible    ${USERNAME_LOCATOR}    10 seconds
    Input Text    ${USERNAME_LOCATOR}    ${USERNAME}
    Input Password    ${PASSWORD_LOCATOR}    ${PASSWORD}
    Click Element    ${LOGINBUTTON_LOCATOR}
    Wait Until Element Is Visible    ${FIRSTITEM_LOCATOR}    10 seconds
    &{scrollGesture}	create dictionary	left=${50}	top=${350}	width=${50}	height=${200}	direction=down	percent=${100}
    Sleep	1
    Execute Script    mobile: scrollGesture    &{scrollGesture}
     ${result}=    Find Specific Text From Mobile App    ${pic}    Test.allTheThings()
    Should Be True    ${result}
    Close Application

scroll test
    Open Test Application
    Wait Until Element Is Visible    ${USERNAME_LOCATOR}    10 seconds
    Flick	100	900	100	100
