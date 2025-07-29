require_relative '../support/remover_comentarios'


#step utilizada passa passar o valor das strings inseridos na feature
Dado('que a string de entrada é {string}') do |texto|
  @texto = texto
end

#step utilizada passa passar o valor dos marcadores inseridos na feature
Dado('os marcadores são {string}') do |marcadores_str|
  @marcadores = marcadores_str.split(',')
end

#step que chama o metodo criado na pasta Suporte, onde executa o metodo de remoção dos simbolos
Quando('eu executar o método de remoção') do
  @resultado = remover_texto_apos_simbolos(@texto, @marcadores)
end

#step utilizada para passsar o valor esperado apos a remoção dos simbolos
Então('a saída esperada deve ser {string}') do |saida_esperada|
  expect(@resultado).to eq(saida_esperada)
end
