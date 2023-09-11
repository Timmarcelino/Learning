## Soma mínima escolhendo o mínimo de pares da matriz

def minSum(array)
  min = array.min
  return min * (array.length.to_i - 1)
end

### TESTE
arr = [7, 2, 3, 4, 5, 6]
puts minSum(arr).inspect
