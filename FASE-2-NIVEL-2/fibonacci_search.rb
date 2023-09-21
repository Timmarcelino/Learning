## Dado um array classificado arr[] de tamanho n e um elemento x a ser pesquisado nele. Retorna o 
## índice de x se estiver presente no array, caso contrário, retorne -1. Utilizando pesquisa 
## Fibonacci

def fibonacci_search(arr, x)
    return -1 if arr.empty? # Verifica se o array está vazio
  
    # Inicio dos números de Fibonacci
    fib_m_2 = 0
    fib_m_1 = 1
    fib = fib_m_2 + fib_m_1
  
    # Encontrando o menor número de Fibonacci maior ou igual ao tamanho do array
    while fib < arr.size
      fib_m_2 = fib_m_1
      fib_m_1 = fib
      fib = fib_m_2 + fib_m_1
    end
  
    offset = -1
  
    # Executando a pesquisa
    while fib > 1
      i = [offset + fib_m_2, arr.size - 1].min
  
      # Se x é maior que o elemento no índice i, o índice é movido de acordo
      if arr[i] < x
        fib = fib_m_1
        fib_m_1 = fib_m_2
        fib_m_2 = fib - fib_m_1
        offset = i
      elsif arr[i] > x
        # Se x é menor que o elemento no índice i, a procura continua à esquerda
        fib = fib_m_2
        fib_m_1 = fib_m_1 - fib_m_2
        fib_m_2 = fib - fib_m_1
      else
        # x é encontrado, retorne o índice
        return i
      end
    end
  
    # Se x não for encontrado, retorne -1
    return -1
end
############################################
#Teste

arr = [1, 2, 3, 4, 5, 6, 7, 8]
x = 7
result = fibonacci_search(arr, x)
puts "\n\nNa lista #{arr.inspect} \nO elemento #{x} está no índice #{result}.\n\n"