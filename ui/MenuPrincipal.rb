require_relative 'MenuAbstrato'
require_relative 'MenuProduto'
require_relative 'MenuVenda'

# Classe para o menu principal do programa
class MenuPrincipal < MenuAbstrato
  def initialize
    super()
    @menu_produto = MenuProduto.new
    @menu_venda = MenuVenda.new
  end

  protected

  def executar_opcao(opcao, scanner)
    case opcao
    when 0
      return 0
    when 1
      @menu_produto.mostrar_menu(scanner)
    when 2
      @menu_venda.mostrar_menu(scanner)
    else
      warn 'OPCAO INVALIDA\n'
    end
    1
  end

  def mostrar_opcoes
    puts "0 -> FECHAR PROGRAMA\n1 -> PRODUTO\n2 -> VENDA"
  end

  def mostrar_titulo
    puts 'MENU PRINCIPAL'
  end
end
