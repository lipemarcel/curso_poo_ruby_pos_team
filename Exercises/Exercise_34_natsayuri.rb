class Cachorro

    attr_accessor :raca
    attr_accessor :nome

    def initialize (raca, nome)
        @raca = raca
        @nome = nome
    end

    def latir (texto = "au au")
        return texto
    end

end

dog1 = Cachorro.new("puddle", "meg")

puts dog1.raca
puts dog1.nome
puts dog1.latir("dkjabdksbdjas")

