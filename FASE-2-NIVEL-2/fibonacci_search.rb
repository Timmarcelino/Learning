## Dado um array classificado arr[] de tamanho n e um elemento x a ser pesquisado nele. Retorna o 
## índice de x se estiver presente no array, caso contrário, retorne -1. Utilizando pesquisa 
## Fibonacci

def fibonacci_search(arr, x)
    # Verifique se o array está vazio
    if arr.empty?
      return -1
    end
  
    # Calcule o valor de f(n)
    f8 = 55
  
    # Inicialize as variáveis low e high
    low = 0
    high = arr.size - 1
  
    # Percorra o array
    while low <= high do
      # Calcule o índice médio
      mid = (low + high) / 2
  
      # Se x == arr[mid], retorne mid
      if x == arr[mid]
        return mid
      end
  
      # Se x < arr[mid], atualize high
      if x < arr[mid]
        high = mid - f8
      end
  
      # Caso contrário, atualize low
      else
        low = mid + f8
      end
    end
  
    # O elemento não foi encontrado
    return -1
  end
############################################
#Teste

arr = [1, 2, 3, 4, 5, 6, 7, 8]
x = 7
result = fibonacci_search(arr, x)
puts "O elemento #{x} está no índice #{result}."