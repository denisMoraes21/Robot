***Settings***
#Robot é tabular
Documentation   Suite para testar a classe ContaLibrary

Library         app/ContaLibrary.py

***Test Cases***
Quando abro uma nova conta deve retornar saldo ZERADO
#Criando uma instância da classe Abrir conta
    Abrir Conta

#Chamando o método Obter saldo
#Método retorna saldo final
    ${saldo_final}          Obter Saldo
#Convertendo string ára número
    ${saldo_esperado}       Convert To Number   0.0
#Keyword nativa do robot
    Log                     ${saldo_final}
    Log                     ${saldo_esperado}
#Pega dois objetos e verifica se são iguais
#1° validação
    Should Be Equal         ${saldo_final}      ${saldo_esperado}

Quando faço um depósito deve refletur o valor no meu saldo
    Abrir Conta
    ${valor_deposito}       Convert To Number   100
    Deposita                ${valor_deposito}   
    ${saldo_final}          Obter Saldo
    Should Be Equal         ${saldo_final}  ${valor_deposito}

Quando faço um saque deve deduzir o valor do meu saldo
    Abrir Conta
    ${valor_deposito}       Convert To Number   2000

    Deposita                ${valor_deposito}   
    ${valor_saque}          Convert To Number   200

    Saca                    ${valor_saque}
#Fazer operações matemáticas com robot
    ${saldo_esperado}       Evaluate            ${valor_deposito} - ${valor_saque} - 2

    ${saldo_final}          Obter Saldo
    Should Be Equal         ${saldo_final}      ${saldo_esperado}
