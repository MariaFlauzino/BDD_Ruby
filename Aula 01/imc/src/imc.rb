# classe que representa o sistema de cálculo IMC
class IMC
    def calcula(peso, altura)
        imc = (peso / (altura * 2)).round(2)

        if imc > 22
            return "Sobrepeso. #partiu academia" 
        else
            return "Você é saudável"
        end
    end
end