Feature: comprarOnline


Scenario: Validar que um produto pode ser adicionado ao carrinho na loja virtual
    
    Given acesso o site
    When adiciono o cartao auto ao carrinho de compras
    Then valido que o produto foi adicionado com sucesso ao carrinho