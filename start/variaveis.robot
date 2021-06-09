***Settings***
Documentation       Exemplos de variáveis

Library             app/nome.py

#Criação de variável global, apenas constantes
***Variables***
${APELIDO}      Denis

***Test Cases***
Exemplo 01
#definindo uma variável local,nome = Fernando
    #${nome}     Set Variable    Fernando
    ${nome}     Obter Nome
    #Definindo variável como suíte para ser usada em outro caso de teste
    #Utilizando o método 
    Set Suite Variable      ${nome}
    Log To Console          ${nome}
    Log To Console          ${APELIDO}

Exemplo 02
    Log TO Console          ${nome}
    Log To Console          ${APELIDO}
