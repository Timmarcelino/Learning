## O subconjunto de produto mínimo de uma matriz refere-se a um subconjunto de elementos da matriz de modo que o
## produto dos elementos do subconjunto seja o menor possível. Para encontrar o subconjunto mínimo de produtos,
## vários algoritmos podem ser usados, como greedy algorithms, dynamic programming e branch and bound.
## Utilizaremos uma abordagem simplificada de dynamic programming

def min_product(arr)
  n = arr.length

  # Caso especial: se o array contiver apenas um elemento, esse elemento é o mínimo produto
  return arr[0] if n == 1

  # Inicializa as tabelas de programação dinâmica
  min_positive = Array.new(n, 0)
  max_negative = Array.new(n, 0)

  # Inicializa as variáveis para controlar o produto mínimo global
  min_product = 1

  # Inicializa as tabelas com os valores iniciais
  min_positive[0] = [arr[0], 1].max
  max_negative[0] = [arr[0], 1].min
  min_product = arr[0]

  # Preenche as tabelas de programação dinâmica
  for i in 1...n
    if arr[i] == 0
      min_positive[i] = 1
      max_negative[i] = 1
    elsif arr[i] > 0
      min_positive[i] = [arr[i], arr[i] * min_positive[i - 1]].min
      max_negative[i] = [arr[i], arr[i] * max_negative[i - 1]].max
    else
      min_positive[i] = [arr[i], arr[i] * max_negative[i - 1]].min
      max_negative[i] = [arr[i], arr[i] * min_positive[i - 1]].max
    end

    # Atualiza o produto mínimo global
    min_product = [min_product, min_positive[i]].min
  end

  return min_product
end

# Exemplo de uso:
array = [-1, -1, -2, 4, 3]
puts array.inspect
puts min_product(array)

array =[]
5.times{
  rnd = Random.new
  array << (rnd.rand(-10..10)).to_i
}
puts array.inspect
puts min_product(array)
