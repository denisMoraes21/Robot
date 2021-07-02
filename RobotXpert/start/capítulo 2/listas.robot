***Settings***
Documentation       Conhecendo as Listas

#Para trabalhar com manipulação de listas
Library             Collections
***Variables***
#Adicionando uma lista
@{AVENGERS}     Ironman     Hulk    Thor    Capitao
@{JUSTICE}      Superman    Wonder Woman    Batman

***Test Cases***
Minha lista
#Imprimindo uma lista como se fosse uma variável
    Log To Console      ${AVENGERS[3]}
#Substituindo o valor de uma lista
    Set List Value      ${AVENGERS}         0   Homem De Ferro
    Log To Console      ${AVENGERS}
    #Mostrando o index
    ${index}        Get Index From List     ${AVENGERS}     Thor
    Log To Console      ${index}

    Remove From List    ${AVENGERS}         2
    Log To Console      ${AVENGERS}

    #Concatenação entre listas
    ${crossover}        Combine Lists      ${AVENGERS}         ${JUSTICE}
    Log To Console      ${crossover}
