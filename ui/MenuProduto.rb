require_relative 'MenuEntidade'
require_relative '../data/DAOProduto'
require_relative '../entidades/Produto'

# Menu para gerenciamento de produtos
class MenuProduto < MenuEntidade
  def initialize
    super()
    @dao = DAOProduto.instance
  end

  protected

  def mostrar_titulo
    puts 'MENU PRODUTOS'
  end

  def listar
    puts @dao.to_s
  end

  def adicionar(scanner)
    nome = nil
    valor = 0.0

    loop do
      begin
        print "\nDigite o nome: "
        nome = scanner.gets.strip

        print 'Digite o valor: '
        valor = Float(scanner.gets.strip)

        if nome.empty? || valor <= 0.0
          raise StandardError, "\nFavor informar os dados corretamente.\n"
        else
          break
        end
      rescue StandardError => e
        warn e.message
      end
    end

    @dao.adicionar(Produto.new(nome, valor))
  end

  def remover(scanner)
    nome = nil

    loop do
      begin
        print "\nDigite o nome: "
        nome = scanner.gets.strip

        if nome.empty?
          raise StandardError, "\nFavor informar o nome corretamente.\n"
        else
          break
        end
      rescue StandardError => e
        warn e.message
      end
    end

    @dao.remover_por_nome(nome)
  end
end
