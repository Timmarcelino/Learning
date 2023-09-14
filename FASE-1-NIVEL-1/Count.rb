## Contar letras maiúsculas, minúsculas, caracteres especiais e valores numéricos

def count_characters(frase)
  upper_count = 0
  lower_count = 0
  number_count = 0
  special_count = 0

  frase = frase.to_s

  frase.each_char do |char|
    case char
    when 'A'..'Z'
      upper_count += 1
    when 'a'..'z'
      lower_count += 1
    when '0'..'9'
      number_count += 1
    else
      special_count += 1
    end
  end

  resposta = { Upper: upper_count, Lower: lower_count, Number: number_count, Special: special_count }
  return resposta
end

################################################
#Testes
print "Digite uma frase: "
frase = gets.chomp
resultado = count_characters(frase.to_s)
puts "\n Maiúsculas =  #{resultado[:Upper]}\n Minúsculas = #{resultado[:Lower]}\n Números = #{resultado[:Number]}\n Caracteres especiais = #{resultado[:Special]}\n"
