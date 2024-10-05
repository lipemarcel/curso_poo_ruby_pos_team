class Pessoa
    attr_accessor :nome
    attr_accessor :idade

    def initialize (nome, idade)
        @nome = nome
        @idade = idade
    end

    def gritar(texto)
        return "Gritandoo #{texto}"
    end

    def agradecer
        return "obrigada!!"
    end
end




############

pessoa1 = Pessoa.new("Nat", 2)

pessoa2 = Pessoa.new("Ana", 3)

puts pessoa1.nome
puts pessoa1.idade

puts pessoa2.nome
puts pessoa2.idade