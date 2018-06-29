#language:pt

Funcionalidade: Calculo de IMC
    Sendo um usuário que está preocupado com a minha saúde 
    Posso calcular meu nível de IMC
    Para saber se devo fazer um regime ou ir para o BK

Cenario: IMC Saudável

    Dado que  meu peso é "70" kilos
    E minha altura é "1.70"
    Quando faço o cálculo
    Então vejo a mensagem "Você é saudável"

Cenario: IMC Deu ruim

    Dado que  meu peso é "90" kilos
    E minha altura é "1.70"
    Quando faço o cálculo
    Então vejo a mensagem "Sobrepeso. #partiu academia"