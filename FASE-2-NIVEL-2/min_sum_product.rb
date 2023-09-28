## Encontre a soma mínima dos produtos de dois arrays do mesmo tamanho, dado que k modificações são 
## permitidas no primeiro array. Em cada modificação, um elemento da primeira matriz pode ser aumentado 
## ou diminuído em 2.

def min_product(a, b, k)
  n = a.length
  # Calcula a soma inicial dos produtos dos dois arrays
  sum = a.zip(b).map { |a, b| a * b }.sum

  # Inicializa o array de resultados
  res = [sum]

  # Para cada número de modificações
  (1..k).each do |n|
    # Encontre o elemento com o menor valor absoluto em a
    min_val = a.min_by(&:abs)

    # Encontre o índice do elemento com o menor valor absoluto em a
    min_index = a.index(min_val)

    # Modifique o elemento com o menor valor absoluto em a
    a[min_index] += 2 if min_val >= 0
    a[min_index] -= 2 if min_val < 0

    # Recalcula a soma
    sum += 2 * b[min_index] if min_val >= 0
    sum -= 2 * b[min_index] if min_val < 0

    # Adicione o novo valor da soma aos resultados
    res << sum
  end

  # Retorne o menor valor encontrado
  return res.min
end

# Exemplo de uso:
arr1 = [2, 3, 4, 5, 4]
arr2 = [3, 4, 2, 3, 2]
k = 3

puts "\nArray1: #{arr1.inspect}"
puts "Array2: #{arr2.inspect}"
puts "Realizando #{k} modificações, a soma mínima dos produtos dos arrays é: #{min_product(arr1, arr2, k)}"
  