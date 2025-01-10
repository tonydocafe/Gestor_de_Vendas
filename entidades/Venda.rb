
require_relative 'Totalizavel'

class Venda < Entidade
    include Totalizavel
  
    def initialize
      super()
      @data_hora = Time.now
      @itens = []
    end
  
    def data_hora
      @data_hora
    end
  
    def itens
      @itens
    end
  
    def adicionar_item(produto, qtd)
      @itens << ItemVenda.new(produto, qtd)
    end
  
    def remover_item(posicao)
      @itens.delete_at(posicao)
    end
  
    def remover_item_por_nome(nome_produto)
      @itens.delete_if { |i| i.produto.nome.casecmp(nome_produto).zero? }
    end
  
    def to_s
      sb = "#{super()}Data-Hora: #{@data_hora}\nItens:\n"
      @itens.each do |i|
        sb += "\n  #{i}"
      end
      sb += "\nTOTAL: #{total}"
      sb
    end
  
    def total
      t = 0.0
      @itens.each do |i|
        t += i.valor * i.qtd
      end
      t
    end
  
    private
  
    class ItemVenda
      attr_reader :produto, :qtd, :valor
  
      def initialize(produto, qtd)
        @produto = produto
        @qtd = qtd
        @valor = produto.valor
      end
  
      def to_s
        format("%15s %8.2f x %5d = %8.2f", @produto.nome, @valor, @qtd, @valor * @qtd)
      end
    end
  end
  