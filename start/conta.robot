***Settings***
#Robot é tabular
Documentation   Suite para testar a classe ContaLibrary

Library         ContaLibrary.py

***Test Cases***
Quando abro uma nova conta deve retornar saldo ZERADO
#Criando uma instância da classe Abrir conta
    Abrir Conta

#Chamando o método Obter saldo
#Método retorna saldo final
    ${saldo_final}      Obter Saldo
#Convertendo string ára número
    ${saldo_esperado}   Convert To Number       0.0
#Keyword nativa do robot
    Log     ${saldo_final}
    Log     ${saldo_esperado}
#Pega dois objetos e verifica se são iguais
#1° validação
    Should Be Equal     ${saldo_final}      ${saldo_esperado}
