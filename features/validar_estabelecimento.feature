# language: pt

Funcionalidade: Validar tipos de estabelecimentos

  Cenário: Validar que a chave "typeOfEstablishment" existe e sortear um tipo
    Dado que faço uma requisição para a lista de tipos de estabelecimentos
    Então o JSON deve conter a chave "typeOfEstablishment"
    E devo imprimir aleatoriamente um dos tipos retornados
