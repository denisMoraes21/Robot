***Settings***
Documentation       Trabalhando com Condicionais (Tomadas de decisões e validações)

***Test Cases***
Carteira de Motorista
    ${idade} =      Set Variable        18
    IF      ${idade} >= 18
        Log To Console      Você pode tirar sua CNH 
    ELSE
        Log To Console      Você pode andar de bicicleta
    END
#Nem sempre é uma boa estratégia pois talvez o teste não esteja claro
#Fazer dois casos de teste para cada escolha

Navegador
    [tags]      browser
    ${browser}=        Set Variable        Firefox
#Robot precisa entender que é uma string
    IF          '${browser}' == 'Firefox'
        Log To Console      Chamando o ${browser}
    ElSE IF     '${browser}' == 'Chrome'
        Log To Console      Chamando o ${browser}
    ELSE IF     '${browser}' == 'Webkit'
        Log To Console      Chamanod o ${browser}
    ElSE
#Forçando uma falha
        Fail      Navegador incorreto
    END
