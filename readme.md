# Robot Framework
## Installation commands

### Installing python
* sudo apt install python-pip
### Installing robotframework
* sudo pip install --upgrade robotframework-seleniumlibrary

## Code

```

*** Settings ***
Library  SeleniumLibrary
Library  String

*** Test Cases ***
Open Carmudi Website
    ${url}    Set Variable    https://www.carmudi.co.id/
    Open Browser    ${url}
    Location Should Be    https://www.carmudi.co.id/
Click "< 100 Juta" Button
    Click Element    xpath=//div[@class="card py-2 price-range d-flex align-items-center justify-content-center" and @data-category="cars" and @data-label="< 100 Juta"]
    Location Should Be    https://www.carmudi.co.id/cars/condition:all/price:-100000000/
Verify if there are 30 listings in the page
    ${CountQuantity}=    Get Element Count    //p[@class="item-price type-xs price"]
    Should Be Equal As Integers   ${CountQuantity}    30
Verify if all listings are less than 100 juta
    ${xpath}=    Set Variable    //p[@class="item-price type-xs price"]
    ${CountAmount}=    Get Matching Xpath Count    ${xpath}
    ${names}=    Create List
    : FOR    ${INDEX}    IN RANGE    1    ${CountAmount} +1
    \    Log    ${INDEX}
    \    ${value}    Get Text    xpath=(${xpath})[${INDEX}]
    \    Log    ${value}
    ${result} =    Split String     ${value}    Juta
    Should Be True    ${result}[0] < 100
Click Next Button
    Click Element    xpath=//a[@title="Halaman Selanjutnya"]
    Sleep    5s
    Location Should Be    https://www.carmudi.co.id/cars/condition:all/price:-100000000/?page=2
Verify if there are 30 listings in the page
    ${CountQuantityPage2}=    Get Element Count    //p[@class="item-price type-xs price"]
    Should Be Equal As Integers    ${CountQuantityPage2}    30
Verify if all listings are less than 100 juta
    ${xpath}=    Set Variable    //p[@class="item-price type-xs price"]
    ${CountAmount}=    Get Matching Xpath Count    ${xpath}
    ${names}=    Create List
    : FOR    ${INDEX}    IN RANGE    1    ${CountAmount} +1
    \    Log    ${INDEX}
    \    ${value}    Get Text    xpath=(${xpath})[${INDEX}]
    \    Log    ${value}
    ${result} =    Split String     ${value}    Juta
    Should Be True    ${result}[0] < 100
Click Next button
    Click Element    xpath=//a[@title="Halaman Selanjutnya"]
    Sleep    5s
    Location Should Be    https://www.carmudi.co.id/cars/condition:all/price:-100000000/?page=3
Verify if there are 30 listings in the page
    ${CountQuantityPage3}=    Get Element Count    //p[@class="item-price type-xs price"]
    Should Be Equal As Integers    ${CountQuantityPage3}    30
Verify if all listings are less than 100 juta
    ${xpath}=    Set Variable    //p[@class="item-price type-xs price"]
    ${CountAmount}=    Get Matching Xpath Count    ${xpath}
    ${names}=    Create List
    : FOR    ${INDEX}    IN RANGE    1    ${CountAmount} +1
    \    Log    ${INDEX}
    \    ${value}    Get Text    xpath=(${xpath})[${INDEX}]
    \    Log    ${value}
    ${result} =    Split String     ${value}    Juta
    Should Be True    ${result}[0] < 100
Click Next button
    Click Element    xpath=//a[@title="Halaman Selanjutnya"]
    Sleep    5s
    Location Should Be    https://www.carmudi.co.id/cars/condition:all/price:-100000000/?page=4
Verify if there are 30 listings in the page
    ${CountQuantityPage4}=    Get Element Count    //p[@class="item-price type-xs price"]
    Should Be Equal As Integers    ${CountQuantityPage4}    30
Verify if all listings are less than 100 juta
    ${xpath}=    Set Variable    //p[@class="item-price type-xs price"]
    ${CountAmount}=    Get Matching Xpath Count    ${xpath}
    ${names}=    Create List
    : FOR    ${INDEX}    IN RANGE    1    ${CountAmount} +1
    \    Log    ${INDEX}
    \    ${value}    Get Text    xpath=(${xpath})[${INDEX}]
    \    Log    ${value}
    ${result} =    Split String     ${value}    Juta
    Should Be True    ${result}[0] < 100
Click Next button
    Click Element    xpath=//a[@title="Halaman Selanjutnya"]
    Sleep    5s
    Location Should Be    https://www.carmudi.co.id/cars/condition:all/price:-100000000/?page=5
Verify if there are 30 listings in the page
    ${CountQuantityPage5}=    Get Element Count    //p[@class="item-price type-xs price"]
    Should Be Equal As Integers    ${CountQuantityPage5}    30
Verify if all listings are less than 100 juta
    ${xpath}=    Set Variable    //p[@class="item-price type-xs price"]
    ${CountAmount}=    Get Matching Xpath Count    ${xpath}
    ${names}=    Create List
    : FOR    ${INDEX}    IN RANGE    1    ${CountAmount} +1
    \    Log    ${INDEX}
    \    ${value}    Get Text    xpath=(${xpath})[${INDEX}]
    \    Log    ${value}
    ${result} =    Split String     ${value}    Juta
    Should Be True    ${result}[0] < 100
    Close All Browsers

```
## Run command

```robot %NAME%.robot ```