## Pangram é uma frase que contém todas as letras do alfabeto inglês. Dada uma string,
## encontre todos os caracteres que estão faltando na string, ou seja, os caracteres
## que podem tornar a string um Pangram.

def missing_character(str_Frase)
  alfabeto = ('a' .. 'z').to_a
  letras_presentes = str_Frase.downcase.scan(/[a-z]/).uniq
  letras_faltantes = alfabeto - letras_presentes

  if letras_faltantes.empty?
    return "A Frase é um Pangram"
  else
    return letras_faltantes.join(', ')
  end
end

##########################################
# Teste
frase =  'A rápida raposa marrom salta'

puts missing_character(frase)
