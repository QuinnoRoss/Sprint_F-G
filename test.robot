*** Settings ***
Library  SeleniumLibrary
Library  String

*** Test Cases ***

Page 4 Verification
    Page 4 URL Verification
    Verify Number of Listing for Page 4
    Verify if all Listings are less than 100 for page 4

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



Page 4 URL Verification
    Open Browser    ${Page 4 URL}
    Sleep   10s
    Location Should Be      ${Page 4 URL}

Verify Number of Listing for Page 4
    ${Count Listings}=     Get Element Count   ${Listings Locator}
    Should Be Equal As Integers     ${Count Listings}      30

Verify if all Listings are less than 100 for page 4
    ${xpath}=    Set Variable    //p[@class="item-price type-xs price"]
    ${CountingXpath}=    Get Element Count    ${xpath}
    #${names}=    Create List
    : FOR    ${INDEX}    IN RANGE    1    ${CountingXpath} +1
    \    Log    ${INDEX}
    \    ${InitialValue}    Get Text    xpath=(${xpath})[${INDEX}]
    \    Log    ${InitialValue}
    ${Listing Value Page4} =    Split String     ${InitialValue}    Juta
    Should Be True    ${Listing Value Page4}[0] < 100

