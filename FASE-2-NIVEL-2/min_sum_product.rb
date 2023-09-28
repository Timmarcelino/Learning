## Encontre a soma mínima dos produtos de dois arrays do mesmo tamanho, dado que k modificações são 
## permitidas no primeiro array. Em cada modificação, um elemento da primeira matriz pode ser aumentado 
## ou diminuído em 2.

def min_product(a, b, k)
  n = a.length
  diff = 0 # Variável para armazenar a maior diferença entre produtos
  res = 0 # Variável para armazenar o resultado da soma dos produtos
  (0...n).each do |i|
    pro = a[i] * b[i]
    res += pro # Somando o produto atual ao resultado total

    if (pro < 0 && b[i] < 0)
      temp = (a[i] + 2 * k) * b[i] # Aumentar a[i] para minimizar o resultado
    elsif (pro < 0 && a[i] < 0)
      temp = (a[i] - 2 * k) * b[i] # Diminuir a[i] para minimizar o resultado
    elsif (pro > 0 && a[i] < 0)
      temp = (a[i] + 2 * k) * b[i]  # Aumentar a[i] para minimizar o resultado
    elsif (pro > 0 && a[i] > 0)
      temp = (a[i] - 2 * k) * b[i]   # Diminuir a[i] para minimizar o resultado
    end

    d = (pro - temp).abs # Calcular a diferença entre o produto original e modificado
    diff = d if d > diff # Atualizar a maior diferença, se necessário
  end

  return res - diff # Retornar a soma dos produtos menos a maior diferença
end

# Exemplo de uso:
arr1 = [2, 3, 4, 5, 4]
arr2 = [3, 4, 2, 3, 2]
k = 3

puts "\nArray1: #{arr1.inspect}"
puts "Array2: #{arr2.inspect}"
puts "Realizando #{k} modificações, a soma mínima dos produtos dos arrays é: #{min_product(arr1, arr2, k)}"
  