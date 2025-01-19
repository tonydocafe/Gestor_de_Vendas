# Gestor_de_Vendas
Esse programa é um sistema básico de gerenciamento de produtos e vendas desenvolvido em Ruby. Ele implementa conceitos fundamentais de orientação a objetos e utiliza algoritmos simples para manipulação de dados, como buscas, adições e remoções em coleções. A estrutura do sistema é organizada em pacotes que separam as responsabilidades em entidades, dados e interfaces de usuário, proporcionando clareza e modularidade.

### Ruby é Fortemente Tipada
Isso significa que não há conversão implícita entre tipos incompatíveis. Em outras palavras, se você tentar combinar valores de tipos diferentes, Ruby vai lançar um erro em vez de tentar adivinhar o que você quis fazer.


### Ruby é de Tipagem Dinâmica
Você não precisa declarar o tipo de uma variável ao criá-la. O tipo é atribuído automaticamente com base no valor atribuído à variável, e você pode alterar esse tipo durante a execução do programa.

###### execução :

ruby main.rb


## Conceitos sobre Ruby

#### 1. Variáveis
As variáveis em Ruby podem ser de vários tipos e possuem diferentes escopos:

Variáveis locais: Começam com uma letra minúscula ou _. Ex.: nome.
Variáveis de instância: Começam com @ e pertencem a instâncias de objetos.
Variáveis de classe: Começam com @@ e são compartilhadas entre todas as instâncias de uma classe.
Variáveis globais: Começam com $ e estão disponíveis em todo o programa.

class Produto
  @@contador = 0 # Variável de classe

  def initialize(nome, valor)
    @id = Time.now.to_i       # Variável de instância
    @nome = nome              # Variável de instância
    @valor = valor            # Variável de instância
    @@contador += 1
  end

  def self.total_de_produtos # Método de classe
    @@contador
  end
end
#### 2. Tipos
Ruby é dinamicamente tipada. Não é necessário declarar explicitamente o tipo das variáveis.

Exemplo de tipos:

nome = "Caneta"         # String
quantidade = 10         # Integer
preco = 2.99            # Float
disponivel = true       # Boolean
tags = ["Escrita", "Papelaria"] # Array
caracteristicas = {cor: "azul", ponta: "0.7mm"} # Hash
Variação:
Podemos explorar diferentes tipos de coleções:


itens = Set.new(["item1", "item2", "item3"]) # Conjunto
puts itens.include?("item2") # true
#### 3. Estruturas de Controle
Controlam o fluxo de execução.

Exemplo com if e case:

idade = 18
if idade >= 18
  puts "Maior de idade"
else
  puts "Menor de idade"
end

nota = 8
case nota
when 0..4
  puts "Reprovado"
when 5..7
  puts "Recuperação"
else
  puts "Aprovado"
end
Exemplo com loop:

loop do
  print "Digite um número (0 para sair): "
  entrada = gets.to_i
  break if entrada == 0
  puts "Você digitou: #{entrada}"
end
#### 4. Expressões
Blocos como find, select, reject e outros são amplamente usados para manipular coleções.


produtos = [
  { id: 1, nome: "Caneta", valor: 2.99 },
  { id: 2, nome: "Lápis", valor: 1.99 }
]

caneta = produtos.find { |p| p[:nome] == "Caneta" }
puts caneta[:valor] # 2.99

produtos.reject! { |p| p[:id] == 2 }
puts produtos.inspect
#### 5. Subprogramas
Os métodos encapsulam lógica reutilizável.


class Loja
  def adicionar_produto(produtos, produto)
    produtos << produto
  end
end
Variação com bloco:

def executar_com_bloco
  puts "Antes do bloco"
  yield if block_given?
  puts "Depois do bloco"
end

executar_com_bloco { puts "Dentro do bloco" }
#### 6. Classes
Ruby suporta herança, mixins e encapsulamento.

Exemplo básico:

class Produto
  attr_accessor :nome, :valor

  def initialize(nome, valor)
    @nome = nome
    @valor = valor
  end
end
Com mixin:

module Desconto
  def aplicar_desconto(percentual)
    @valor -= @valor * percentual / 100
  end
end

class Produto
  include Desconto
end
#### 7. Recursos Próprios
Ruby permite trabalhar com classes aninhadas e recursos como DSLs (Domain-Specific Languages).

Exemplo com classe aninhada:
```ruby
class Venda
  class Item
    attr_accessor :nome, :quantidade

    def initialize(nome, quantidade)
      @nome = nome
      @quantidade = quantidade
    end
  end
end

item = Venda::Item.new("Caneta", 10)
puts item.nome # Caneta


#### 8. Gerenciamento de Memória
O garbage collector elimina automaticamente objetos não referenciados.

Exemplo de limpeza:
```ruby
dados = [1, 2, 3, 4]
dados.reject! { |n| n.even? } # Remove números pares
puts dados.inspect # [1, 3]
9. Tratamento de Exceções
Ajuda a lidar com erros.


begin
  numero = Integer("abc")
rescue ArgumentError => e
  puts "Erro: #{e.message}"
ensure
  puts "Finalizando a operação."
end
Exemplo com retry:

begin
  print "Digite um número: "
  numero = Integer(gets)
rescue ArgumentError
  puts "Entrada inválida. Tente novamente."
  retry
end
puts "Número válido: #{numero}"
