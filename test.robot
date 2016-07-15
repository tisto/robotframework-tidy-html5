*** Variables ***

${HOST}                 kitconcept.com
${PORT}                 80
${BROWSER}              chrome
${SERVER}               https://${HOST}:${PORT}


*** Settings ***

Documentation   WebpackLibrary Acceptance Tests
Library         OperatingSystem
Library         Process
Library         Selenium2Library  timeout=10  implicit_wait=0
Suite Setup     Open Browser  ${SERVER}  ${BROWSER}
Suite Teardown  Close Browser


*** Test Cases ***

Scenario: Webpack Dev Server
  Go To  ${SERVER}
  Wait until page contains  kitconcept
  ${sourcecode}=  Get Source
  Create File  ${OUTPUT_DIR}/source.html  ${sourcecode}
  ${output}=  Run Process  tidy -config tidy.conf source.html
  Log  ${output}  WARN

*** Keywords ***

