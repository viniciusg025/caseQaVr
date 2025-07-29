
#método para montar uma expressão regular com todos os símbolos do array, 
#divide a string onde encontrar, e retorna apenas a primeira parte (antes dos símbolos).

def remover_texto_apos_simbolos(texto, simbolos)
  regex = Regexp.union(simbolos)
  texto.split(regex).first.strip
end
