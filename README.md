# Gestor_de_Vendas
Esse programa é um sistema básico de gerenciamento de produtos e vendas desenvolvido em Ruby. Ele implementa conceitos fundamentais de orientação a objetos e utiliza algoritmos simples para manipulação de dados, como buscas, adições e remoções em coleções. A estrutura do sistema é organizada em pacotes que separam as responsabilidades em entidades, dados e interfaces de usuário, proporcionando clareza e modularidade.

## Comparações
#### DATA
## DAO

1. Tipagem

Java: Linguagem estaticamente tipada. No script, o uso de generics (<E extends Entidade>) garante que o DAO só funcione com classes que estendam Entidade. Isso ajuda a evitar erros em tempo de compilação.
Ruby: Linguagem dinamicamente tipada. Não há verificação de tipos em tempo de compilação; os métodos confiam na existência dos atributos e métodos esperados, como id.


2. Sintaxe e Estrutura

Java: Mais verbosa, requer importações explícitas (ArrayList), declarações de tipos e usa blocos explícitos (for, if).
Ruby: Mais concisa, com uso de métodos como find e reject!, que já encapsulam lógicas comuns. Além disso, Ruby usa end para fechar blocos.


3. Expressões Lambda/Funções Anônimas

Java: Usa lambdas para simplificar operações em coleções, como dados.removeIf(e -> e.getId() == id).
Ruby: Funções de coleção são nativas (find, reject!), tornando o código ainda mais simples.


4. String Manipulation
Java: Usa StringBuilder para otimizar a concatenação de strings, garantindo eficiência em operações repetitivas.
Ruby: Permite o uso de map e join, combinando a listagem de elementos em uma string de maneira direta.

###### execução :

ruby main.rb
