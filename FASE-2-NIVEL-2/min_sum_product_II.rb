## Encontre a soma mínima dos produtos de dois arrays do mesmo tamanho, dado que k modificações são
## permitidas no primeiro array. Em cada modificação, um elemento da primeira matriz pode ser aumentado
## ou diminuído em 2.

def min_sum_prod(arr1, arr2, k)
    sum = arr1.zip(arr2).sum { |a, b| a * b } ## Soma inicial
    res = [sum] # Array que armazena as soma dos produtos

    k.times do      
      min_sum = sum
      (0..(arr1.length - 1)).each do |i|
        temp = arr1[i]
        arr1[i] += 2
        sum_temp = arr1.zip(arr2).sum { |a, b| a * b }
        res << sum_temp
        arr1[i] = temp
        arr1[i] -= 2
        sum_temp = arr1.zip(arr2).sum { |a, b| a * b }
        res << sum_temp
      end
    end
    res.min
  end

  # Teste
  arr1 = [2, 3, 4, 5, 4]
  arr2 = [3, 4, 2, 3, 2]
  k = 3

  puts "Array1: #{arr1.inspect}"
  puts "Array2: #{arr2.inspect}"
  puts "Realizando #{k} modificações, a soma mínima dos produtos dos arrays é: #{min_sum_prod(arr1, arr2, k)}"
