class DAOVenda
    @instance = DAOVenda.new
    @dao = DAO.new
  
    def self.instance
      @instance
    end
  
    def adicionar(venda)
      self.class.dao.adicionar(venda)
    end
  
    def buscar(id)
      self.class.dao.buscar(id)
    end
  
    def remover(id)
      self.class.dao.remover(id)
    end
  
    def to_s
      self.class.dao.to_s
    end
  
    private
  
    def self.dao
      @dao
    end
  end
  