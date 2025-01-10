class DAO
    def initialize
      @dados = []
    end
  
    def get_dados
      @dados
    end
  
    def adicionar(entidade)
      @dados << entidade
    end
  
    def buscar(id)
      @dados.find { |e| e.id == id }
    end
  
    def remover(id)
      @dados.reject! { |e| e.id == id }
    end
  
    def to_s
      @dados.map(&:to_s).join("\n")
    end
  end
  