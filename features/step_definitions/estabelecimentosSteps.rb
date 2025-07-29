
#Step que faz a requisição na lista de estabelecimentos 
Dado('que faço uma requisição para a lista de tipos de estabelecimentos') do
  @response = ApiService.get_establishment_types
  @json = @response.parsed_response
end

#Step que valida que contem a chave typeOfEstablishment dentro do json
Então('o JSON deve conter a chave {string}') do |chave|
  expect(@json).to have_key(chave)
end

#Step que imprime aleatóriamente um tipo de estabelecimento que contem dentro da chave typeOfEstablishment
Então('devo imprimir aleatoriamente um dos tipos retornados') do
  tipos = @json['typeOfEstablishment']
  tipo_sorteado = tipos.sample
  puts "\n🔸 Tipo de estabelecimento sorteado: #{tipo_sorteado}"
end
