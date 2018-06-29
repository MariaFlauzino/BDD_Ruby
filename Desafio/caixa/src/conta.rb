class Conta
    attr_accessor :saldo

    def initialize(saldo)
        @saldo = saldo
    end

    def saca(valor)
       
        if valor > 700
            "Valor máximo para saque por transação é de R$ 700"
        elsif @saldo >= valor
            @saldo -= valor
            "Saque com sucesso. Muito obrigado!"
        else
            "Saldo insuficiente para saque."
        end
    end
end