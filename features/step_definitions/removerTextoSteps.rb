require_relative '../support/remover_comentarios'

Dado('que a string de entrada é {string}') do |texto|
  @texto = texto
end

Dado('os marcadores são {string}') do |marcadores_str|
  @marcadores = marcadores_str.split(',')
end

Quando('eu executar o método de remoção') do
  @resultado = remover_texto_apos_simbolos(@texto, @marcadores)
end

Então('a saída esperada deve ser {string}') do |saida_esperada|
  expect(@resultado).to eq(saida_esperada)
end
