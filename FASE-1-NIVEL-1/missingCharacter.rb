## Pangram é uma frase que contém todas as letras do alfabeto inglês. Dada uma string,
## encontre todos os caracteres que estão faltando na string, ou seja, os caracteres
## que podem tornar a string um Pangram.

def missing_character(str_Frase)
  base = ('a' .. 'z').to_a
  letras_frase = str_Frase.downcase.scan(/[a-z]/).uniq
  letras_faltantes = base - letras_frase

  if letras_faltantes.empty?
    return -1
  else
    return letras_faltantes.join(', ')
  end
end

##########################################
# Teste
print 'Digite uma frase: '
frase= gets.chomp
resultado = missing_character(frase)

if resultado == -1
  puts "A frase é um Pangram!!! Parabéns!!!"
else
  puts "Faltam as letras: #{resultado} "
end
