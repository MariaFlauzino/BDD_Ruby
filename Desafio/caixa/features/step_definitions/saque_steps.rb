require_relative '../../src/conta.rb'

Dado("que eu tenho uma conta com {int} reais") do |saldo_inicial|
    @conta = Conta.new(saldo_inicial)
end
  
Quando("faço um saque no valor de {int} reais") do |saque|
    @resultado = @conta.saca(saque)
end
  
Então("{int} reais será o meu saldo final") do |saldo_final|
    expect(@conta.saldo).to eql saldo_final
end
  
Então("devo ver a seguinte mensagem {string}") do |mensagem|
    expect(@resultado).to eql mensagem
end
