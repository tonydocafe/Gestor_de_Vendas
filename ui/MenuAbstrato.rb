# Classe abstrata para a estrutura dos menus
class MenuAbstrato
    def mostrar_menu(scanner)
      opcao = nil
  
      loop do
        puts "\n\n\n"
  
        mostrar_titulo
        mostrar_opcoes
  
        print 'INFORME A SUA OPCAO: '
        opcao = scanner.gets.to_i
  
        break if executar_opcao(opcao, scanner) == 0
      end
    end
  
    protected
  
    def executar_opcao(opcao, scanner)
      raise NotImplementedError, 'Este método deve ser implementado pela subclasse'
    end
  
    def mostrar_opcoes
      raise NotImplementedError, 'Este método deve ser implementado pela subclasse'
    end
  
    def mostrar_titulo
      raise NotImplementedError, 'Este método deve ser implementado pela subclasse'
    end
  end
  