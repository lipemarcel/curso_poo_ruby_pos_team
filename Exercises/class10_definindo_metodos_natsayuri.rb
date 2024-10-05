class Pessoa
    def gritar(texto)
        return "Gritandoo #{texto}"
    end

    def agradecer
        return "obrigada!!"
    end
end




############

obj1 = Pessoa.new
puts obj1.gritar("Grrrrr AAAAAA")
puts obj1.agradecer
