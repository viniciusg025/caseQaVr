
Dado('que faço uma requisição para a lista de tipos de estabelecimentos') do
  @response = ApiService.get_establishment_types
  @json = @response.parsed_response
end

Então('o JSON deve conter a chave {string}') do |chave|
  expect(@json).to have_key(chave)
end

Então('devo imprimir aleatoriamente um dos tipos retornados') do
  tipos = @json['typeOfEstablishment']
  tipo_sorteado = tipos.sample
  puts "\n🔸 Tipo de estabelecimento sorteado: #{tipo_sorteado}"
end
