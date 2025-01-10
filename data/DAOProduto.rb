
require_relative 'DAO'

class DAOProduto
    @instance = DAOProduto.new
    @dao = DAO.new
  
    def self.instance
      @instance
    end
  
    def adicionar(produto)
      self.class.dao.adicionar(produto)
    end
  
    def buscar(id)
      self.class.dao.buscar(id)
    end
  
    def buscar_por_nome(nome)
      self.class.dao.get_dados.find { |p| p.nome == nome }
    end
  
    def remover(id)
      self.class.dao.remover(id)
    end
  
    def remover_por_nome(nome)
      self.class.dao.get_dados.reject! { |e| e.nome == nome }
    end
  
    def to_s
      self.class.dao.to_s
    end
  
    private
  
    def self.dao
      @dao
    end
  end
  