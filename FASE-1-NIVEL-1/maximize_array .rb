# Maximize array sum after K negations using Sorting (Maximize a soma da matriz após K negações usando classificação[ordenação])

def maximize_array(array, k)
  array.sort! #Ordenação do array
  i = 0

  #Operação para Negar k numeros
  while i < array.length && k > 0
    if array[i] < 0
      array[i] *= -1
      k -= 1
    else
      break
    end
    i += 1
  end

  # Após todos os números negativos tenham sido negados, decrementa i
  i -= 1 if i == array.length

  # Se k é zero ou par, retorna a soma do array
  return array.sum if k == 0 || k % 2 == 0

  # Depois, verifica se a negação de array[i] resulta em uma soma maior
  if i != 0 && array[i].abs >= array[i - 1].abs
    i -= 1
  end

  # Agora negar array[i] para obter a soma máxima e retorna a soma
  array[i] *= -1
  return array.sum
end

#Testes
