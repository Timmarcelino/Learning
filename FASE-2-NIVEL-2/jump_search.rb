## O algoritmo divide o array em blocos de tamanho aproximadamente √n (onde "n" é o tamanho do array) e procura o bloco 
## que contém o valor procurado. Uma vez que o bloco relevante é encontrado, uma busca linear é realizada dentro desse 
## bloco para localizar o elemento específico.

def jump_search(array, alvo)
    n = array.length
    step = Math.sqrt(n).to_i
  
    # Encontre o bloco onde o elemento alvo pode estar
    prev = 0
    while array[min(step, n) - 1] < alvo
      prev = step
      step += Math.sqrt(n).to_i
      return -1 if prev >= n # Elemento não encontrado
    end
  
    # Faça uma busca linear no bloco
    while array[prev] < alvo
      prev += 1
      return -1 if prev == [step, n].min # Elemento não encontrado
    end
  
    # Se o elemento for encontrado, retorne o índice
    return prev if array[prev] == alvo
  
    # Elemento não encontrado
    return -1
  end
  
  # Teste:
  
  array = [1, 3, 5, 7, 9, 11, 13, 15]
  alvo_element = 7
  
  result = jump_search(array, alvo_element)
  
  if result != -1
    puts "O elemento #{alvo_element} foi encontrado no índice #{result}."
  else
    puts "O elemento #{alvo_element} não foi encontrado na lista."
  end
  