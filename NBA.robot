*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost/Customer-Form-with-BVA/Customer/Customer.html
${FIRST_NAME_ID}    id=firstName
${LAST_NAME_ID}    id=lastName
${AGE_ID}    id=age
${SUBMIT_BUTTON}    css=input[type='submit']
${RESULT_ID}    id=firstname
${EXPECTED_RESULT}    First Name: johnjohn
${EXPECTED_RESULT2}    First Name: Johnj

*** Test Cases ***
Fill Form And Verify First Name
    Open Browser    ${URL}    Chrome    
    Input Text    ${FIRST_NAME_ID}    johnjohn
    Input Text    ${LAST_NAME_ID}    canonc
    Input Text    ${AGE_ID}    2
    Click Button    ${SUBMIT_BUTTON}
    ${result}=    Get Text    ${RESULT_ID}
    Should Be Equal As Strings    ${result}    ${EXPECTED_RESULT}
    Close Browser


Fill Form And Verify First Name2
    Open Browser    ${URL}    Chrome   
    Input Text    ${FIRST_NAME_ID}    Johnj
    Input Text    ${LAST_NAME_ID}    canonc
    Input Text    ${AGE_ID}    2
    Click Button    ${SUBMIT_BUTTON}
    ${result}=    Get Text    ${RESULT_ID}
    Should Be Equal As Strings    ${result}    ${EXPECTED_RESULT2}
    Close Browser
