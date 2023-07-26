*** Settings ***
Library  Collections
Library  RequestsLibrary

Suite Teardown  Delete All Sessions

*** Test Cases ***
Get Request TestWebsite
    Create Session  getwebsite        https://www.jdriven.com    verify=false
    ${resp}=        GET On Session  getwebsite  /       expected_status=200
    Should Be Equal As Strings      ${resp.status_code}     200