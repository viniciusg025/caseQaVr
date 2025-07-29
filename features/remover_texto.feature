# language: pt

Funcionalidade: Remover texto após símbolos

  Cenário: Remover texto após marcador
    Dado que a string de entrada é "bananas, tomates # e ventiladores"
    E os marcadores são "#,!"
    Quando eu executar o método de remoção
    Então a saída esperada deve ser "bananas, tomates"

  Cenário: Remover texto com símbolos diferentes
    Dado que a string de entrada é "o rato roeu a roupa $ do rei % de roma"
    E os marcadores são "%,!"
    Quando eu executar o método de remoção
    Então a saída esperada deve ser "o rato roeu a roupa $ do rei"

  Cenário: Remover texto com múltiplos símbolos
    Dado que a string de entrada é "the quick brown fox & jumped over * the lazy dog"
    E os marcadores são "&,*,%,!"
    Quando eu executar o método de remoção
    Então a saída esperada deve ser "the quick brown fox"
