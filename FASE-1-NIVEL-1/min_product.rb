## O subconjunto de produto mínimo de uma matriz refere-se a um subconjunto de elementos da matriz de modo que o
## produto dos elementos do subconjunto seja o menor possível. Para encontrar o subconjunto mínimo de produtos,
## vários algoritmos podem ser usados, como greedy algorithms, dynamic programming e branch and bound.
## Implementaremos uma abordagem simplificada de branch and bound

def minProduct(arr)
  n = arr.length
  selected_indices = []

end

# Testes
array = [ -1, -1, -2, 4, 3 ]
puts minProduct(array)

array = [ -1, 0 ]
puts minProduct(array)

array = [ 2, -3, 1, 0, -5 ]
puts minProduct(array)
