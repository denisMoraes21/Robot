***Settings***
Documentation       Laços de  repetição


***Variables***
@{AVENGERS}     Ironman     Hulk    Thor    Capitao
@{JUSTICE}      Superman    Wonder Woman    Batman


***Test Cases***
Meu primeiro loop

    FOR     ${item}     IN      @{AVENGERS}
    #Não precisa de chaves em ifs
        IF      $item == 'Ironman'
            Log To Console      Obtendo o Vingador: ${item}
        END
    END

Outro loop
    [tags]      thor
    FOR     ${item}     IN      @{AVENGERS}
        Exit For Loop IF    $item == 'Thor'
        Log To Console      Obtendo o vingador: ${item}
    END