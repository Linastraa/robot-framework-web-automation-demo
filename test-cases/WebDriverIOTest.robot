*** Settings ***
Resource    configs/AppiumVariables.robot
Resource    object-repository/locators/WebDriverIOLocators/locators.robot
Resource    object-repository/locators/WebDriverIOLocators/webViewLocators.robot
Resource    object-repository/locators/WebDriverIOLocators/swipeLocators.robot

Library    AppiumLibrary

*** Test Cases ***

Successful login with credentials
    Open Test Application
    Click Element  ${LOGIN_LOCATOR}
    Wait Until Element Is Visible    ${EMAIL_LOCATOR}    10 seconds
    Input Text    ${EMAIL_LOCATOR}    hassan@gmail.com
    Wait Until Element Is Visible    ${PASSWORD_LOCATOR}    10 seconds
    Input Password    ${PASSWORD_LOCATOR}    43853344
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    10 seconds
    Click Element    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE}    10 seconds
    Element Text Should Be    ${SUCCESS_MESSAGE}    You are logged in!
    Close Application

Drag and Drop test
    Open Test Application
    Wait Until Element Is Visible    ${DRAG_LOCATOR}
    Click Element    ${DRAG_LOCATOR}
    Wait Until Element Is Visible    ${BEFOREDRAGTEXT_LOCATOR}
    Drag And Drop    ${DRAG_11}    ${DROP_11}
    Drag And Drop    ${DRAG_12}    ${DROP_12}
    Drag And Drop    ${DRAG_13}    ${DROP_13}
    Drag And Drop    ${DRAG_21}    ${DROP_21}
    Drag And Drop    ${DRAG_22}    ${DROP_22}
    Drag And Drop    ${DRAG_23}    ${DROP_23}
    Drag And Drop    ${DRAG_31}    ${DROP_31}
    Drag And Drop    ${DRAG_32}    ${DROP_32}
    Drag And Drop    ${DRAG_33}    ${DROP_33}
    Wait Until Element Is Visible    ${CONGSMESSAGE_LOCATOR}
    Element Text Should Be    ${CONGSMESSAGE_LOCATOR}    Congratulations
    Close Application

webView test
    Open Test Application
    Wait Until Element Is Visible    ${webViewButton}    10 seconds
    Click Element    ${webViewButton}
    Wait Until Element Is Visible    ${pageProof}    30 seconds

    Element Should Be Visible After Scrolling    ${apiRefText}

    Wait Until Element Is Visible    ${apiRefText}
    Click Element    ${apiRefText}
    Wait Until Element Is Visible    ${text}    10 seconds
    Element Text Should Be    ${text}    Introduction
    Close Application

swipe test
    Open Test Application
    Wait Until Element Is Visible    ${swipeButton}    10 seconds
    Click Element    ${swipeButton}
    Wait Until Element Is Visible    ${swipeText}    10 seconds
    Element Should Be Visible After Swiping    ${swipeElement}
    Sleep    5
    
    
*** Keywords ***
Element Should Be Visible After Scrolling
    [Arguments]    ${locator}
    ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
    WHILE    '${is_visible}' == 'False'
        Flick	100	900	100	100
        ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
    END
    
Element Should Be Visible After Swiping
    [Arguments]    ${locator}
    ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
    WHILE    '${is_visible}' == 'False'
        Flick	900	100	100	100
        ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${locator}
    END