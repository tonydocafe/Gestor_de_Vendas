class Entidade
    attr_reader :id
  
    def initialize
      @id = Time.now.to_i
    end
  
    def to_s
      "Id: #{@id}\t"
    end
  end
  