*** Settings ***
Documentation    Online

Resource    ../resources/base.resource

*** Test Cases ***
Webapp deve estar online
    
    Start Session
    
    Get Title       equal    Mark85 by QAx

    # Sleep    10

    # robot -d ./logs (gera o relatorio na pasta especifica criada ./logs)
    