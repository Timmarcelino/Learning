## Encontre a soma mínima dos produtos de dois arrays do mesmo tamanho, dado que k modificações são 
## permitidas no primeiro array. Em cada modificação, um elemento da primeira matriz pode ser aumentado 
## ou diminuído em 2.

def min_sum_prod(arr1, arr2, k)
    n = arr1.length
    product_sum = arr1.zip(arr2).sum { |a, b| a * b }
  
    k.times do
      min_val = arr1.min_by(&:abs)
      min_index = arr1.index(min_val)
  
      if min_val >= 0
        arr1[min_index] -= 2
      else
        arr1[min_index] += 2
      end
  
      new_sum = arr1.zip(arr2).sum { |a, b| a * b }
      
      # Se a nova soma for menor, atualizamos o valor
      product_sum = new_sum if new_sum < product_sum
    end
  
    product_sum
  end
  
  # Teste
  arr1 = [2, 3, 4, 5, 4]
  arr2 = [3, 4, 2, 3, 2]
  k = 3
  
  puts "Array1: #{arr1.inspect}"
  puts "Array2: #{arr2.inspect}"
  puts "Realizando #{k} modificações, a soma mínima dos produtos dos arrays é: #{min_sum_prod(arr1, arr2, k)}"
  