class Cachorro
    attr_accessor :nome, :idade, :raca

    #construtor roda automaticamente
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def late
        puts @nome + 'diz: Au, au...'
    end

    def Mostra_Idade
        puts "Idade: #{idade}, Nome: #{nome}"
    end
end

spike = Cachorro.new('Spike', 5)
snoop = Cachorro.new('Snoop', 2)

spike.Mostra_Idade