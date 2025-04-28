*** Settings ***
Documentation        Ações e elementos da página de login

Library        Browser

*** Keywords ***
Submit login form
    [Arguments]        ${user}        

    Fill Text    css=input[placeholder$=mail]    ${user}[email]    #expressao regular $(serve para buscar um termo do texto como elemento)
    Fill Text    css=input[placeholder=Senha]    ${user}[password]

    Click        css=button >> text=Entrar
