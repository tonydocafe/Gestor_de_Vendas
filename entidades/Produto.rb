require_relative 'Entidade'

class Produto < Entidade
    attr_accessor :nome, :valor
  
    def initialize(nome = "", valor = 0.0)
      super()
      @nome = nome
      @valor = valor
    end
  
    def to_s
      "#{super()}Nome: #{@nome}\tValor: %.2f" % @valor
    end
  end
  