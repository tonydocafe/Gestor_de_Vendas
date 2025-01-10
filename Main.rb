# Main.rb

# Requer os arquivos necessários
require_relative 'ui/MenuPrincipal'
require_relative 'ui/MenuVenda'
require_relative 'ui/MenuProduto'
require_relative 'ui/MenuEntidade'

require_relative 'entidades/Produto'
require_relative 'entidades/Venda'
require_relative 'entidades/Totalizavel'
require_relative 'entidades/Entidade'

require_relative 'data/DAOProduto'
require_relative 'data/DAO'
require_relative 'data/DAOVenda'

# Classe principal do programa
class Main
  def self.run
    # Inicializa o scanner para entrada do usuário
    scanner = STDIN

    # Instancia o MenuPrincipal e exibe o menu
    menu_principal = MenuPrincipal.new
    menu_principal.mostrar_menu(scanner)
  end
end

# Executa o programa
Main.run
