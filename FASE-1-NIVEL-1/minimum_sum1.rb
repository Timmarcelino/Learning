## Soma mínima escolhendo o mínimo de pares da matriz
## Solução baseada no site (https://www.geeksforgeeks.org/minimum-sum-choosing-minimum-pairs-array/)

def minSum(array)
  min = array.min
  return min * (array.length.to_i - 1)
end

### TESTE

arr = [7, 2, 3, 4, 5, 6]
puts minSum(arr).inspect
#Resposta dada pelo site 10 eu esperava 5 (2+3)
