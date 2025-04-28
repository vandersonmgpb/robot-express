*** Settings ***    
Documentation        Cenários de teste de atualização de tarefas

Resource    ../../resources/base.resource
Resource    ../../resources/services.resource

Test Setup        Start Session
Test Teardown     Take Screenshot

*** Test Cases ***
Deve poder marcar uma tarefa como concluída
    
    ${data}    Get fixture    tasks    done

    Reset user from database    ${data}[user]

    Create a new task from API    ${data}

    Do login            ${data}[user]

    Mark task as completed      ${data}[task][name]
    Task should be complete     ${data}[task][name]

    Sleep    6