# Feito com base no Exercício 1 do Curso de Ruby | Exercícios 1 ao 5

class Carro
  attr_accessor :marca, :modelo

  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
  end

  def exibir_informacoes
    puts "Marca: #{@marca} | Modelo: #{@modelo}"
  end

  def ligar_carro
    puts "O carro está ligado"
  end
end

novo_carro = Carro.new('Volkswagen', 'Gol')
novo_carro.exibir_informacoes
novo_carro.ligar_carro