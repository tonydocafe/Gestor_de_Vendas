class MenuVenda < MenuEntidade
    def initialize
      super()
      @dao_venda = DAOVenda.instance
      @dao_produto = DAOProduto.instance
    end
  
    def mostrar_titulo
      puts "MENU VENDAS"
    end
  
    def listar
      puts @dao_venda.to_s
    end
  
    def adicionar(scanner)
      venda = Venda.new
      produto = nil
      qtd = 0
  
      loop do
        loop do
          begin
            print "\nDigite o nome do produto: "
            produto = @dao_produto.buscar_por_nome(scanner.gets.chomp)
  
            print "Digite a quantidade: "
            qtd = scanner.gets.chomp.to_i
  
            if produto.nil? || qtd <= 0
              raise "Favor informar os dados corretamente."
            else
              break
            end
          rescue StandardError => ex
            puts ex.message
          end
        end
  
        venda.adicionar_item(produto, qtd)
  
        print "\nDeseja adicionar outro produto à venda (1-SIM/0-NAO)? "
        resposta = scanner.gets.chomp.to_i
        break if resposta != 1
      end
  
      puts "\n\nNOTA FISCAL\n#{venda.to_s}"
  
      @dao_venda.adicionar(venda)
    end
  
    def remover(scanner)
      id = 0
  
      loop do
        begin
          print "\nDigite o id: "
          id = scanner.gets.chomp.to_i
  
          if id <= 0
            raise "Favor informar os dados corretamente."
          else
            break
          end
        rescue StandardError => ex
          puts ex.message
        end
      end
  
      @dao_venda.remover(id)
    end
  end
  