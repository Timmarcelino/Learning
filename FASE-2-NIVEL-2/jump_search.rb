## O algoritmo divide o array em blocos de tamanho aproximadamente √n (onde "n" é o tamanho do array) e procura o bloco 
## que contém o valor procurado. Uma vez que o bloco relevante é encontrado, uma busca linear é realizada dentro desse 
## bloco para localizar o elemento específico.

def jump_search(arr, target)
    n = arr.length
    step = Math.sqrt(n).to_i
    prev = 0
  
    # Encontre o bloco onde o elemento alvo pode estar
    while arr[[step, n].min - 1] < target
      prev = step
      step += Math.sqrt(n).to_i
      return -1 if prev >= n # Elemento não encontrado
    end
  
    # Faça uma busca linear dentro do bloco
    while arr[prev] < target
      return -1 if prev == [step, n].min - 1 # Elemento não encontrado
      prev += 1
    end
  
    return prev if arr[prev] == target
    return -1 # Elemento não encontrado
  end
  
  ####################################################
  # Teste:
  
  array = [1, 3, 5, 7, 9, 11, 13, 15]
  alvo_element = 7
  
  result = jump_search(array, alvo_element)
  
  if result != -1
    puts "O elemento #{alvo_element} foi encontrado no índice #{result}."
  else
    puts "O elemento #{alvo_element} não foi encontrado na lista."
  end
  
  ####