class Adivinhar_Numero
    attr_reader :numero_aleatorio
    attr_reader :venceu

    def initialize
        @numero_aleatorio = rand(1..100)
        @venceu = false
    end

    def tentar_adivinhar(numero)
        if numero == @numero_aleatorio
            @venceu = true
            return "Você venceu!"
        elsif numero > @numero_aleatorio
            return "Tente um número menor"
        else
            return "Tente um número maior"
        end
    end
end

jogo = Adivinhar_Numero.new

while !jogo.venceu
    print "Digite um número: "
    chute = gets.to_i
    puts jogo.tentar_adivinhar(chute)
end

puts "Parabéns! Você venceu o jogo!"