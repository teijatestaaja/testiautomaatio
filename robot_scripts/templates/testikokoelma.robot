*** Settings ***
Documentation          Pohja Robot Framework -testeille.
Suite Setup            Log       Ajetaan testikokoelma
Library                DateTime
Suite Teardown         Log       Testikokoelma ajettu
Metadata               Versio    1.0
Metadata               Tekijä    Teija Alasalmi

*** Variables ***
${VIESTI}              Hei maailma!

*** Test Cases ***
Oma Testitapaus
    [Documentation]    Esimerkki oman avainsanan käyttämisestä.
    [Tags]             savutesti
    Oma Avainsana      ${VIESTI}

Toinen Testitapaus
    [Documentation]    Esimerkki Robot Frameworkin DateTime -kirjaston avainsanan käyttämisestä.
    [Tags]             savutesti
    ${pvm}             Get Current Date
    Log                ${pvm}

*** Keywords ***
Oma Avainsana
    [Documentation]    Oma avain sana johonkin toimintaan.
    ...
    ...                Kuvataan avainsanan toimintaa.
    [Arguments]        ${lokiviesti}
    Log                ${lokiviesti}