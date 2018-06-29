
# Conta é classe que represente o App
class Conta
  attr_accessor :saldo

  def initialize(saldo)
    @saldo = saldo
  end

  def saca(valor)
    if valor > @saldo
      'Saldo insuficiente para saque.'
    else
      @saldo -= valor
      'Saque com sucesso. Muito obrigado!'
    end
  end
end

Dado('que eu tenho uma conta com {int} reais') do |saldo_inicial|
  @conta = Conta.new(saldo_inicial)
end

Quando('faço um saque no valor de {int} reais') do |valor_saque|
  @resultado = @conta.saca(valor_saque)
end

Então('{int} reais será o meu saldo final') do |saldo_final|
  expect(@conta.saldo).to eql saldo_final
end

Então('devo ver a seguinte mensagem {string}') do |mensagem_saida|
  expect(@resultado).to eql mensagem_saida
end
