# Lista de Exercícios Ruby para Iniciantes

## Índice
1. [Métodos Construtores](#1-métodos-construtores)
2. [Method Overriding](#2-method-overriding)
3. [Super](#3-super)
4. [Self](#4-self)
5. [Métodos de Instância vs Métodos de Classe](#5-métodos-de-instância-vs-métodos-de-classe)
6. [Constantes e Classes Constantes](#6-constantes-e-classes-constantes)
7. [Módulos](#7-módulos)
8. [Mixins](#8-mixins)
9. [Polimorfismo](#9-polimorfismo)
10. [Duck Typing](#10-duck-typing)

---

## 1. Métodos Construtores

**Objetivo:** Criar uma classe com um método construtor.

**Tarefa:**
- Crie uma classe `Pessoa` com atributos `nome` e `idade`.
- Implemente um método construtor que aceite esses dois parâmetros.

**Exemplo de uso:**
```ruby
pessoa = Pessoa.new("Alice", 30)
```

---

## 2. Method Overriding

**Objetivo:** Demonstrar a sobrescrita de métodos.

**Tarefa:**
- Crie uma classe `Animal` com um método `falar`.
- Crie uma subclasse `Cachorro` que sobrescreva o método `falar`.

**Exemplo de uso:**
```ruby
animal = Animal.new
animal.falar  # Saída genérica

cachorro = Cachorro.new
cachorro.falar  # Saída específica do cachorro
```

---

## 3. Super

**Objetivo:** Utilizar `super` para chamar o método da classe pai.

**Tarefa:**
- Modifique o exercício anterior.
- Na classe `Cachorro`, use `super` para chamar o método `falar` da classe pai antes de adicionar o comportamento específico do cachorro.

**Exemplo de uso:**
```ruby
cachorro = Cachorro.new
cachorro.falar  # Deve chamar o método da classe Animal e depois adicionar comportamento específico
```

---

## 4. Self

**Objetivo:** Usar `self` para definir métodos de classe.

**Tarefa:**
- Crie uma classe `Contador` com um método de classe `incrementar`.
- Este método deve aumentar uma variável de classe `@@contagem` em 1 cada vez que é chamado.
- Use `self` para definir este método de classe.

**Exemplo de uso:**
```ruby
Contador.incrementar
Contador.incrementar
puts Contador.contagem  # Deve exibir 2
```

---

## 5. Métodos de Instância vs Métodos de Classe

**Objetivo:** Demonstrar a diferença entre métodos de instância e de classe.

**Tarefa:**
- Crie uma classe `Calculadora` com:
  - Um método de instância `somar`
  - Um método de classe `multiplicar`
- Demonstre a diferença no uso desses métodos.

**Exemplo de uso:**
```ruby
calc = Calculadora.new
puts calc.somar(5, 3)  # Método de instância
puts Calculadora.multiplicar(4, 2)  # Método de classe
```

---

## 6. Constantes e Classes Constantes

**Objetivo:** Trabalhar com constantes e classes constantes.

**Tarefa:**
- Defina uma constante `PI`.
- Crie uma classe constante `MathOperations` que contenha métodos para calcular a área e a circunferência de um círculo.

**Exemplo de uso:**
```ruby
puts PI
puts MathOperations.area_circulo(5)
puts MathOperations.circunferencia_circulo(5)
```

---

## 7. Módulos

**Objetivo:** Criar e utilizar módulos.

**Tarefa:**
- Crie um módulo `Saudacao` com métodos `bom_dia`, `boa_tarde` e `boa_noite`.
- Inclua este módulo em uma classe `Pessoa`.

**Exemplo de uso:**
```ruby
pessoa = Pessoa.new
pessoa.bom_dia
pessoa.boa_noite
```

---

## 8. Mixins

**Objetivo:** Utilizar mixins para adicionar funcionalidades a classes.

**Tarefa:**
- Crie um módulo `Nadador` com um método `nadar`.
- Crie um módulo `Corredor` com um método `correr`.
- Crie uma classe `Atleta` que inclua ambos os módulos.

**Exemplo de uso:**
```ruby
atleta = Atleta.new
atleta.nadar
atleta.correr
```

---

## 9. Polimorfismo

**Objetivo:** Demonstrar polimorfismo através de herança.

**Tarefa:**
- Crie uma classe base `Forma` com um método `area`.
- Crie subclasses `Quadrado`, `Circulo` e `Triangulo`, cada uma implementando seu próprio método `area`.

**Exemplo de uso:**
```ruby
formas = [Quadrado.new(5), Circulo.new(3), Triangulo.new(4, 6)]
formas.each { |forma| puts forma.area }
```

---

## 10. Duck Typing

**Objetivo:** Demonstrar o conceito de duck typing.

**Tarefa:**
- Crie três classes diferentes (`Pato`, `Pessoa`, `Robo`) que tenham um método `falar`, mas com implementações diferentes.
- Crie um método `fazer_barulho` que aceite qualquer objeto e chame seu método `falar`.

**Exemplo de uso:**
```ruby
def fazer_barulho(objeto)
  objeto.falar
end

fazer_barulho(Pato.new)
fazer_barulho(Pessoa.new)
fazer_barulho(Robo.new)
```

