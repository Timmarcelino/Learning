## Algoritmo de pesquisa sequencial que começa em uma extremidade e percorre cada elemento
## de uma lista até que o elemento desejado seja encontrado, caso contrário a pesquisa
## continua até o final do conjunto de dados

def linearSearch(array, elemento)
  i = 0
  for item in array
    if item == elemento
      return i
    end
    i += 1
  end
  retunrn -1
end

#Teste da implementação:

array = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
findValor = 23
puts "\n\n O elemento procurado está na posição: #{linearSearch(array, findValor)}\n\n"
