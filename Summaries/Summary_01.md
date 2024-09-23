# Programação Orientada a Objetos em Ruby

## Introdução

A Programação Orientada a Objetos (POO) é um paradigma de programação que organiza o código em objetos, que são instâncias de classes. Ruby é uma linguagem que suporta totalmente a POO, tornando-a uma excelente escolha para aprender e aplicar esses conceitos.

## Conceitos Fundamentais

### 1. Classes

Uma classe é um modelo para criar objetos. Define atributos e métodos que os objetos terão.

```ruby
class Carro
  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
  end
end
```

### 2. Objetos

Um objeto é uma instância de uma classe.

```ruby
meu_carro = Carro.new("Toyota", "Corolla")
```

### 3. Atributos

Atributos são variáveis que pertencem a um objeto e armazenam seu estado.

```ruby
class Carro
  attr_accessor :marca, :modelo
end
```

### 4. Métodos

Métodos são funções que definem o comportamento de um objeto.

```ruby
class Carro
  def ligar
    puts "O carro está ligado!"
  end
end
```

## Princípios da POO

### 1. Encapsulamento

O encapsulamento protege os dados dentro de um objeto, controlando o acesso a eles.

```ruby
class ContaBancaria
  def initialize(saldo)
    @saldo = saldo
  end

  def depositar(valor)
    @saldo += valor
  end

  def saldo
    @saldo
  end
end
```

### 2. Herança

A herança permite que uma classe herde características de outra.

```ruby
class Veiculo
  def mover
    puts "Movendo-se..."
  end
end

class Carro < Veiculo
  def buzinar
    puts "Bi bi!"
  end
end
```

### 3. Polimorfismo

O polimorfismo permite que objetos de diferentes classes respondam ao mesmo método de maneiras diferentes.

```ruby
class Gato
  def falar
    puts "Miau!"
  end
end

class Cachorro
  def falar
    puts "Au au!"
  end
end

animais = [Gato.new, Cachorro.new]
animais.each { |animal| animal.falar }
```

## Exemplo Prático

Vamos criar um sistema simples de biblioteca:

```ruby
class Livro
  attr_accessor :titulo, :autor

  def initialize(titulo, autor)
    @titulo = titulo
    @autor = autor
    @emprestado = false
  end

  def emprestar
    @emprestado = true
    puts "Livro emprestado: #{@titulo}"
  end

  def devolver
    @emprestado = false
    puts "Livro devolvido: #{@titulo}"
  end
end

class Biblioteca
  def initialize
    @livros = []
  end

  def adicionar_livro(livro)
    @livros << livro
    puts "Livro adicionado: #{livro.titulo}"
  end

  def listar_livros
    puts "Livros na biblioteca:"
    @livros.each { |livro| puts "- #{livro.titulo} por #{livro.autor}" }
  end
end

# Usando o sistema
biblioteca = Biblioteca.new
livro1 = Livro.new("1984", "George Orwell")
livro2 = Livro.new("O Pequeno Príncipe", "Antoine de Saint-Exupéry")

biblioteca.adicionar_livro(livro1)
biblioteca.adicionar_livro(livro2)
biblioteca.listar_livros

livro1.emprestar
livro1.devolver
```

Este exemplo demonstra como usar classes, objetos, métodos e princípios da POO para criar um sistema simples e funcional.
