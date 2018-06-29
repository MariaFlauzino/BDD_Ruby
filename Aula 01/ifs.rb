# IFs funcionam com os operadores de comparação

v1 = 10
v2 = 20

if v1.eql?(v2)
    puts 'Sim são iguais'
else
    puts 'Não são iguais'
end


saldo = 50

if saldo > 500
    puts 'Beleza, pode gastar.'
elsif saldo > 100
    puts 'Deu ruim.'
else
    puts 'Ferrou'
end

# OR ||
# AND &&