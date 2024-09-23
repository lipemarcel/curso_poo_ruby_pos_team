# Exercícios de Programação Orientada a Objetos com Ruby (Iniciantes)

## 1. Criação de Classes e Objetos
- **Objetivo**: Criar uma classe simples e instanciar objetos.
  - Crie uma classe chamada `Carro`.
  - Adicione dois atributos: `marca` e `modelo`.
  - Instancie dois objetos da classe `Carro` com diferentes valores para os atributos.

## 2. Métodos e Atributos
- **Objetivo**: Praticar a criação de métodos para manipular atributos.
  - Na classe `Carro`, crie um método `exibir_informacoes` que imprima os atributos `marca` e `modelo`.
  - Crie um método `ligar_carro` que retorne a frase "O carro está ligado".

## 3. Construtores
- **Objetivo**: Utilizar o método `initialize` para definir atributos no momento da criação do objeto.
  - Modifique a classe `Carro` para que `marca` e `modelo` sejam passados diretamente no momento da criação do objeto, usando `initialize`.

## 4. Atributos de Leitura e Escrita
- **Objetivo**: Implementar métodos de leitura e escrita para atributos.
  - Use `attr_reader` para permitir leitura dos atributos `marca` e `modelo`.
  - Use `attr_writer` para permitir alteração dos valores de `marca` e `modelo`.

## 5. Atributos de Leitura e Escrita Automáticos
- **Objetivo**: Simplificar a criação de getters e setters com `attr_accessor`.
  - Substitua o `attr_reader` e `attr_writer` da classe `Carro` por `attr_accessor`.

## 6. Herança
- **Objetivo**: Implementar herança simples.
  - Crie uma classe `Veiculo` com um atributo `tipo` e um método `iniciar`.
  - Faça a classe `Carro` herdar de `Veiculo`.
  - No método `iniciar`, imprima "Veículo iniciado" na classe `Veiculo` e sobrescreva o método em `Carro` para imprimir "Carro iniciado".

## 7. Polimorfismo
- **Objetivo**: Demonstrar polimorfismo através de métodos herdados.
  - Crie outra classe chamada `Moto` que também herde de `Veiculo`.
  - Sobrescreva o método `iniciar` para imprimir "Moto iniciada".
  - Crie uma função que receba um objeto de `Veiculo` e chame o método `iniciar`. Teste a função com objetos de `Carro` e `Moto`.

## 8. Encapsulamento
- **Objetivo**: Implementar encapsulamento controlando o acesso aos atributos.
  - Na classe `Carro`, faça o atributo `modelo` ser acessível apenas dentro da classe (privado).
  - Crie um método público `atualizar_modelo` que permita alterar o modelo.

## 9. Classes e Métodos Estáticos
- **Objetivo**: Trabalhar com métodos e variáveis de classe.
  - Adicione uma variável de classe chamada `total_de_carros` que armazene quantos carros foram criados.
  - Adicione um método de classe `mostrar_total_de_carros` que imprima esse número.

## 10. Módulos
- **Objetivo**: Incluir módulos para organizar funcionalidades.
  - Crie um módulo chamado `Motor` com um método `ligar_motor` que imprima "Motor ligado".
  - Inclua esse módulo na classe `Carro` e chame o método `ligar_motor`.
