require_relative 'MenuAbstrato'

# Classe abstrata para menus relacionados a entidades
class MenuEntidade < MenuAbstrato
  protected

  def listar
    raise NotImplementedError, 'Este método deve ser implementado pela subclasse'
  end

  def adicionar(scanner)
    raise NotImplementedError, 'Este método deve ser implementado pela subclasse'
  end

  def remover(scanner)
    raise NotImplementedError, 'Este método deve ser implementado pela subclasse'
  end

  def executar_opcao(opcao, scanner)
    case opcao
    when 0
      return 0
    when 1
      listar
    when 2
      adicionar(scanner)
    when 3
      remover(scanner)
    else
      warn "OPCAO INVALIDA\n"
    end
    1
  end

  def mostrar_opcoes
    puts "0 -> VOLTAR\n1 -> LISTAR\n2 -> ADICIONAR\n3 -> REMOVER"
  end
end
