# Gestor_de_Vendas
Esse programa é um sistema básico de gerenciamento de produtos e vendas desenvolvido em Ruby. Ele implementa conceitos fundamentais de orientação a objetos e utiliza algoritmos simples para manipulação de dados, como buscas, adições e remoções em coleções. A estrutura do sistema é organizada em pacotes que separam as responsabilidades em entidades, dados e interfaces de usuário, proporcionando clareza e modularidade.

### Ruby é Fortemente Tipada
Isso significa que não há conversão implícita entre tipos incompatíveis. Em outras palavras, se você tentar combinar valores de tipos diferentes, Ruby vai lançar um erro em vez de tentar adivinhar o que você quis fazer.


### Ruby é de Tipagem Dinâmica
Você não precisa declarar o tipo de uma variável ao criá-la. O tipo é atribuído automaticamente com base no valor atribuído à variável, e você pode alterar esse tipo durante a execução do programa.

###### execução :

ruby main.rb


## Conceitos sobre Ruby

Este projeto demonstra diversos conceitos e recursos da linguagem Ruby por meio de uma aplicação que gerencia produtos, vendas e menus interativos. Abaixo, explicamos as principais características da linguagem utilizando exemplos dos arquivos presentes no projeto.

### Variáveis e Tipos de Dados

Em Ruby, as variáveis não possuem tipo explícito, e os tipos são definidos dinamicamente durante a execução. No exemplo:
```ruby
class Produto < Entidade
  attr_accessor :nome, :valor

  def initialize(nome = "", valor = 0.0)
    super()
    @nome = nome
    @valor = valor
  end
end
```
As variáveis @nome e @valor são atributos de instância que podem armazenar strings e números decimais, respectivamente.

## Estruturas de Controle

Ruby oferece estruturas de controle como loops e condicionais. Exemplo:
```ruby
loop do
  print '\nDigite o nome: '
  nome = scanner.gets.strip

  if nome.empty?
    puts 'Nome inválido!'
  else
    break
  end
end
```
O loop do cria um laço infinito, e o break encerra a execução com base em uma condição.

### Expressões e Métodos

Métodos encapsulam funcionalidades e podem usar expressões para cálculo ou lógica. Exemplo de um método que calcula o total de uma venda:
```ruby
def total
  @itens.sum { |item| item.valor * item.qtd }
end
```
Aqui, a expressão item.valor * item.qtd é avaliada para cada item da lista @itens.

### Subprogramas e Herança

Ruby utiliza classes e herança para organizar código. Exemplo:
```ruby
class Venda < Entidade
  include Totalizavel

  def initialize
    super()
    @itens = []
  end
end
```
A classe Venda herda de Entidade, reutilizando atributos e métodos da superclasse. O módulo Totalizavel adiciona funcionalidade extra.

### Gerenciamento de Memória

O gerenciamento de memória é automático em Ruby, utilizando garbage collection. As variáveis, como @itens na classe Venda, são liberadas automaticamente quando não são mais referenciadas.

### Tratamento de Exceções

Ruby lida com exceções utilizando begin-rescue. Exemplo:
```ruby
loop do
  begin
    print '\nDigite o valor: '
    valor = Float(scanner.gets.strip)

    raise 'Valor inválido!' if valor <= 0.0
    break
  rescue StandardError => e
    puts e.message
  end
end
```
Neste trecho, erros ao converter entradas para Float são tratados, garantindo que o programa continue funcionando.

## Classes e Recursos Próprios

### Módulos

Os módulos permitem compartilhar comportamentos entre classes. Exemplo:
```ruby
module Totalizavel
  def total
    raise NotImplementedError, 'O método total precisa ser implementado na classe.'
  end
end
```
O módulo Totalizavel define um contrato que as classes devem implementar.

### Classes Aninhadas

Classes podem ser definidas dentro de outras para encapsular lógica. Exemplo:
```ruby
class Venda
  class ItemVenda
    attr_reader :produto, :qtd, :valor

    def initialize(produto, qtd)
      @produto = produto
      @qtd = qtd
      @valor = produto.valor
    end
  end
end
```
A classe ItemVenda é usada exclusivamente dentro de Venda.

### Estrutura do Projeto

O projeto é dividido em arquivos para modularização:

Entidade: Classe base para objetos com IDs.

Produto: Representa itens com nome e valor.

Venda: Gerencia vendas e itens associados.

Menus: Classes para interação com o usuário, como MenuProduto e MenuVenda.

Essa estrutura facilita manutenção e escalabilidade.
