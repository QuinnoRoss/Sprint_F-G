*** Settings ***
Library  SeleniumLibrary
Library  String

*** Test Cases ***
Opens Carmudi Home Page
    Homepage verification
Clicks < 100 Juta Button
    Click < 100 Juta Button
Page 1 Verification
    Page 1 URL verification
    Verify Number of Listings
    Verify if all Listings are less than 100
Clicks Next Button For Page 2
    Clicking Next Button
Page 2 Verification
    Page 2 URL verification
    Verify Number of Listings for page 2
    Verify if all Listings are less than 100 for page 2
Clicks Next Button For Page 3
    Clicking Next Button
Page 3 Verification
    Page 3 URL Verification
    Verify Number of Listing for Page 3
    Verify if all Listings are less than 100 for page 3
Clicks Next Button For Page 4
    Clicking Next Button
Page 4 Verification
    Page 4 URL Verification
    Verify Number of Listing for Page 4
    Verify if all Listings are less than 100 for page 4
Clicks Next Button For Page 5
    Clicking Next Button
Page 5 Verification
    Page 5 URL Verification
    Verify Number of Listing for Page 5
    Verify if all Listings are less than 100 for page 5

    Close All Browsers


*** Variable ***
${URL}  https://www.carmudi.co.id/
${< 100 Juta Button}    xpath=//div[@class="card py-2 price-range d-flex align-items-center justify-content-center" and @data-category="cars" and @data-label="< 100 Juta"]
${Page 1 URL}    https://www.carmudi.co.id/cars/condition:all/price:-100000000/
${Listings Locator}    //p[@class="item-price type-xs price"]
${Count Listings}=     Get Element Count   ${Listings Locator}
${Next Button}      //a[@title="Halaman Selanjutnya"]
${Page 2 URL}       https://www.carmudi.co.id/cars/condition:all/price:-100000000/?page=2
${Page 3 URL}       https://www.carmudi.co.id/cars/condition:all/price:-100000000/?page=3
${Page 4 URL}       https://www.carmudi.co.id/cars/condition:all/price:-100000000/?page=4
${Page 5 URL}       https://www.carmudi.co.id/cars/condition:all/price:-100000000/?page=5




*** Keywords ***

Homepage verification

    Open Browser    ${URL}  chrome
    #Maximize Browser Window
    Location Should Be    ${URL}

Click < 100 Juta Button
    Click Element    ${< 100 Juta Button}

Page 1 URL verification
    Location Should Be    ${Page 1 URL}

Verify Number of Listings
    ${Count Listings}=     Get Element Count   ${Listings Locator}
    Should Be Equal As Integers     ${Count Listings}      30

Verify if all Listings are less than 100
   ${xpath}=    Set Variable    //p[@class="item-price type-xs price"]
    ${CountingXpath}=    Get Element Count    ${xpath}
    #${names}=    Create List
    : FOR    ${INDEX}    IN RANGE    1    ${CountingXpath} +1
    \    Log    ${INDEX}
    \    ${InitialValue}    Get Text    xpath=(${xpath})[${INDEX}]
    \    Log    ${InitialValue}
    \   ${Listing Value Page1} =    Split String     ${InitialValue}    Juta
    \   Should Be True    ${Listing Value Page1}[0] < 100

Clicking Next Button
    Click Element       ${Next Button}

#End of Page 1

Page 2 URL verification
    Wait Until Page Contains Element    //a[@title="Halaman Sebelumnya"]
    Location Should Be      ${Page 2 URL}

Verify Number of Listings for page 2
    ${Count Listings}=     Get Element Count   ${Listings Locator}
    Should Be Equal As Integers     ${Count Listings}      30

Verify if all Listings are less than 100 for page 2
    ${xpath}=    Set Variable    //p[@class="item-price type-xs price"]
    ${CountingXpath}=    Get Element Count    ${xpath}
    #${names}=    Create List
    : FOR    ${INDEX}    IN RANGE    1    ${CountingXpath} +1
    \    Log    ${INDEX}
    \    ${InitialValue}    Get Text    xpath=(${xpath})[${INDEX}]
    \    Log    ${InitialValue}
    \   ${Listing Value Page2} =    Split String     ${InitialValue}    Juta
    \   Should Be True    ${Listing Value Page2}[0] < 100

# End of Page 2

Page 3 URL Verification
    Sleep   10s
    Location Should Be      ${Page 3 URL}

Verify Number of Listing for Page 3
    ${Count Listings}=     Get Element Count   ${Listings Locator}
    Should Be Equal As Integers     ${Count Listings}      30

Verify if all Listings are less than 100 for page 3
    ${xpath}=    Set Variable    //p[@class="item-price type-xs price"]
    ${CountingXpath}=    Get Element Count    ${xpath}
    #${names}=    Create List
    : FOR    ${INDEX}    IN RANGE    1    ${CountingXpath} +1
    \    Log    ${INDEX}
    \    ${InitialValue}    Get Text    xpath=(${xpath})[${INDEX}]
    \    Log    ${InitialValue}
    \   ${Listing Value Page3} =    Split String     ${InitialValue}    Juta
    \   Should Be True    ${Listing Value Page3}[0] < 100

# End of Page 3

Page 4 URL Verification
    Sleep   10s
    Location Should Be      ${Page 4 URL}

Verify Number of Listing for Page 4
    ${Count Listings}=     Get Element Count   ${Listings Locator}
    Should Be Equal As Integers     ${Count Listings}      30

Verify if all Listings are less than 100 for page 4
    ${xpath}=    Set Variable    //p[@class="item-price type-xs price"]
    ${CountingXpath}=    Get Element Count    ${xpath}
    #${names}=    Create List
    : FOR    ${INDEX}    IN RANGE    1    3
    \    Log    ${INDEX}
    \    ${InitialValue}    Get Text    xpath=(${xpath})[${INDEX}]
    \    Log    ${InitialValue}
    \   ${Listing Value Page4} =    Split String     ${InitialValue}    Juta
    \   Should Be True    ${Listing Value Page4}[0] < 100
    Click Element       //a[@class="ad-popup__close-button button outlined"]


Page 5 URL Verification
    Sleep   10s
    Location Should Be      ${Page 5 URL}

Verify Number of Listing for Page 5
    ${Count Listings}=     Get Element Count   ${Listings Locator}
    Should Be Equal As Integers     ${Count Listings}      30

Verify if all Listings are less than 100 for page 5
    ${xpath}=    Set Variable    //p[@class="item-price type-xs price"]
    ${CountingXpath}=    Get Element Count    ${xpath}
    #${names}=    Create List
    : FOR    ${INDEX}    IN RANGE    1      ${CountingXpath}+ 1
    \    Log    ${INDEX}
    \    ${InitialValue}    Get Text    xpath=(${xpath})[${INDEX}]
    \    Log    ${InitialValue}
    \   ${Listing Value Page5} =    Split String     ${InitialValue}    Juta
    \   Should Be True    ${Listing Value Page5}[0] <= 100

