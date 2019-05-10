*** Settings ***
Library  SeleniumLibrary
Library  String

*** Test Cases ***
NCS - Main Navigation Bar Verification
    Navigated to NCS Main Page
    Verify NCS Main Page URL
    Verify NCS Main Page Should Contain "Beranda"
    Verify NCS Main Page Should Contain "Mobil Baru"
    Verify NCS Main Page Should Contain "Mobil Bekas"
    Verify NCS Main Page Should Contain "Berita Dan Review"
    Verify NCS Main Page Should Contain "Kendaraan Lainnya"
Mobil Baru Dropdown Verification
    Verify Mobil Baru Should Contain "Look For A New Car"
    Verify Redirection For "Look For A New Car"
Mobil Bekas Dropdown Verification
    Verify Mobil Bekas Should Contain "Find Used Cars"
    Verify Mobil Bekas Should Contain "Sell Your Car"
    Verify Redirection For "Find Used Car"
    Verify Redirection For "Sell Your Car"
Berita Den Review Verification
    Verify Berita Den Review Should Contain "Journal"
    Verify Berita Den Review Should Contain "Video Reviews"
    Verify Berita Den Review Should Contain "Articles"
    #Verify Redirection For "Journal"
    Verify Redirection For "Articles"
Kendaraan Lainnya Verification
     Verify Kendaraan Lainnya Should Contain "New Motors"
     Verify Kendaraan Lainnya Should Contain "Used Motors"
     Verify Kendaraan Lainnya Should Contain "New Commercial Vehicles"
     Verify Kendaraan Lainnya Should Contain "Used Commercial Vehicles"
     Verify Redirection For "New Motors"
     Verify Redirection For "Used Motors"
     Verify Redirection For "New Commercial Vehicles"
     Verify Redirection For "Used Commercial Vehicles"

     Close All Browsers







*** Variable ***
${URL}      https://en.carmudi.co.id/mobilbaru/
${Beranda}      (//a[@class="nav-link dropdown-toggle d-flex align-items-center"])[1]
${Mobil Baru}       (//a[@class="nav-link dropdown-toggle d-flex align-items-center "])[1]
${Look For New Cars}    (//a[contains(text(),"Look for a new car")])[2]
${Look For New Cars URL}    https://www.carmudi.co.id/mobilbaru/merek/
${Sell Your Car}        //a[contains(text(),"Sell your Car")]
${Sell Your Car URL}       https://www.carmudi.co.id/listing/create/

${Mobil Bekas}      xpath=(//a[@class="nav-link dropdown-toggle d-flex align-items-center"])[2]
${Find Used Cars}   (//a[contains(text(),"Find Used Cars")])[2]
${Find Used Cars URL}   https://www.carmudi.co.id/cars/condition:used/

${Berita Den Review}    (//a[@class="nav-link dropdown-toggle d-flex align-items-center "])[2]
${Journal}          (//a[contains(text(),"Journal")])[2]
${Journal URL}      https://www.carmudi.co.id/journal/
${Video Reviews}       (//a[contains(text(),"Video Reviews")])[2]
${Articles}         (//a[contains(text(),"Articles")])[2]
${Articles URL}     https://www.carmudi.co.id/mobilbaru/reviews/

${New Motors}       (//a[contains(text(),"New Motors")])[2]
${New Motors URL}   https://www.carmudi.co.id/motorcycles/new-3/
${Used Motors}      (//a[@href="https://www.carmudi.co.id/motorcycles/used/"])[2]
${Used Motors URL}      https://www.carmudi.co.id/motorcycles/used/
${New Commercial Vehicles}      (//a[@href="https://www.carmudi.co.id/commercial-vehicles/new-3/"])[2]
${New Commercial Vehicles URL}      https://www.carmudi.co.id/commercial-vehicles/new-3/
${Used Commercial Vehicles}     (//a[contains(text(),"Used Commercial Vehicles")])[2]
${Used Commercial Vehicles URL}     https://www.carmudi.co.id/commercial-vehicles/used/
${Kendaraan Lainnya}     (//a[@class="nav-link dropdown-toggle d-flex align-items-center"])[3]
${Brand}        //img[@alt="nissan"]
${Search Button}        //button[@class="btn btn-yellow d-none d-lg-block search-btn"]



*** Keywords ***




Navigated to NCS Main Page
    Open Browser    ${URL}  chrome
    Maximize Browser Window
Verify NCS Main Page URL
    Location Should Be      https://en.carmudi.co.id/mobilbaru/
Verify NCS Main Page Should Contain "Beranda"
    Page Should Contain Element         ${Beranda}
Verify NCS Main Page Should Contain "Mobil Baru"
    Page Should Contain Element         ${Mobil Baru}
Verify NCS Main Page Should Contain "Mobil Bekas"
    Page Should Contain Element         ${Mobil Bekas}
Verify NCS Main Page Should Contain "Berita Dan Review"
    Page Should Contain Element         ${Berita Den Review}
Verify NCS Main Page Should Contain "Kendaraan Lainnya"
    Page Should Contain Element         ${Kendaraan Lainnya}
Verify Mobil Baru Should Contain "Look For A New Car"
    Mouse Over      ${Mobil Baru}
    Page Should Contain Element             ${Look For New Cars}
Verify Redirection For "Look For A New Car"
    Click Element     ${Look For New Cars}
    Location Should Be      ${Look For New Cars URL}
    Go Back
Verify Mobil Bekas Should Contain "Find Used Cars"
    Mouse Over      ${Mobil Bekas}
    Page Should Contain Element     ${Find Used Cars}
Verify Mobil Bekas Should Contain "Sell Your Car"
    Page Should Contain Element     ${Sell Your Car}
Verify Redirection For "Find Used Car"
    Click Element       ${Find Used Cars}
    Location Should Be      ${Find Used Cars URL}
    Go Back
Verify Redirection For "Sell Your Car"
    Mouse Over      ${Mobil Bekas}
    Wait Until Element Is Visible       ${Sell Your Car}
    Click Element       ${Sell Your Car}
    Location Should Be      ${Sell Your Car URL}
    Go Back
Verify Berita Den Review Should Contain "Journal"
    Mouse Over      ${Berita Den Review}
    Page Should Contain Element     ${Journal}
Verify Berita Den Review Should Contain "Video Reviews"
    Page Should Contain Element     ${Video Reviews}
Verify Berita Den Review Should Contain "Articles"
    Page Should Contain Element     ${Articles}
Verify Redirection For "Journal"
    Wait Until Element Is Visible       ${Journal}
    Click Element       ${Journal}
    Location Should Be      ${Journal URL}
    Go back
Verify Redirection For "Articles"
    Mouse Over      ${Berita Den Review}
    Wait Until Element Is Visible       ${Articles}
    Click Element       ${Articles}
    Location Should Be      ${Articles URL}
    Go Back
Verify Kendaraan Lainnya Should Contain "New Motors"
    Mouse Over      ${Kendaraan Lainnya}
    Page Should Contain Element     ${New Motors}
Verify Kendaraan Lainnya Should Contain "Used Motors"
     Page Should Contain Element     ${Used Motors}
Verify Kendaraan Lainnya Should Contain "New Commercial Vehicles"
     Page Should Contain Element     ${New Commercial Vehicles}
Verify Kendaraan Lainnya Should Contain "Used Commercial Vehicles"
    Page Should Contain Element     ${Used Commercial Vehicles}
Verify Redirection For "New Motors"
    Click Element       ${New Motors}
    Location Should Be  ${New Motors URL}
    Go Back
Verify Redirection For "Used Motors"
    Mouse Over      ${Kendaraan Lainnya}
    Wait Until Element Is Visible       ${Used Motors}
    Click Element       ${Used Motors}
    Location Should Be  ${Used Motors URL}
    Go Back
Verify Redirection For "New Commercial Vehicles"
    Mouse Over      ${Kendaraan Lainnya}
    Wait Until Element Is Visible       ${New Commercial Vehicles}
    Click Element       ${New Commercial Vehicles}
    Location Should Be  ${New Commercial Vehicles URL}
    Go Back
Verify Redirection For "Used Commercial Vehicles"
    Mouse Over      ${Kendaraan Lainnya}
    Wait Until Element Is Visible       ${Used Commercial Vehicles}
    Click Element       ${Used Commercial Vehicles}
    Location Should Be  ${Used Commercial Vehicles URL}
    Go Back





