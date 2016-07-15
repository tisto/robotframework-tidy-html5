*** Variables ***

${HOST}                 localhost
${PORT}                 8000
${BROWSER}              chrome
${SERVER}               http://${HOST}:${PORT}


*** Settings ***

Documentation   HTML Linter Acceptance Tests
Library         DebugLibrary
Library         OperatingSystem
Library         Process
Library         Selenium2Library  timeout=10  implicit_wait=0
Suite Setup     Open Browser  ${SERVER}  ${BROWSER}
Suite Teardown  Close Browser


*** Test Cases ***

Scenario: HTML Tidy
  Go To  ${SERVER}
  Wait until page contains  Anmelden
  ${sourcecode}=  Get Source
  Create File  ${OUTPUT_DIR}/source.html  ${sourcecode}
  ${output}=  Run Process  /usr/bin/tidy  -q  -e  ${OUTPUT_DIR}/source.html
  Log  ----  WARN
  Log  ${output.stderr}  WARN
  Log  ----  WARN

Scenario: HTML5 Lint
  Go To  ${SERVER}
  Wait until page contains  Anmelden
  ${sourcecode}=  Get Source
  Create File  ${OUTPUT_DIR}/source.html  ${sourcecode}
  ${output}=  Run Process  python  html5check.py  ${OUTPUT_DIR}/source.html
  Log  ----  WARN
  Log  ${output.stdout}  WARN
  Log  ----  WARN

*** Keywords ***
