## Contar letras maiúsculas, minúsculas, caracteres especiais e valores numéricos

def count(frase)
  upper = 0
  lower = 0
  number = 0
  special = 0
  frase = frase.to_s
  if frase.length > 0
    for e in frase.chars do
      if e.ord >= 65 and e.ord <=90
        upper += 1
      elsif e.ord >= 97 and e.ord <=122
        lower += 1
      elsif e.ord >= 48 and e.ord <=57
        number += 1
      else
        special += 1
      end
    end
  end
  resposta = {Upper: upper, Lower: lower, Number: number, Special: special}
  return resposta
end
################################################
#Testes
print "Digite uma frase: "
frase = gets.chomp
resultado = count(frase.to_s)
puts "\n Maiúsculas =  #{resultado[:Upper]}\n Minúsculas = #{resultado[:Lower]}\n Números = #{resultado[:Number]}\n Caracteres especiais = #{resultado[:Special]}\n"
