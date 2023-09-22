## O processo principal no quickSort é uma partição(). O objetivo das partições é colocar o pivô 
## (qualquer elemento pode ser escolhido para ser um pivô) em sua posição correta na matriz 
## classificada e colocar todos os elementos menores à esquerda do pivô e todos os elementos 
## maiores à direita do pivô .
## A partição é feita recursivamente em cada lado do pivô depois que o pivô é colocado em sua 
## posição correta e isso finalmente classifica o array.

def quick_sort(arr)
  quick_sort_helper(arr, 0, arr.length - 1)
  arr
end

def quick_sort_helper(arr, low, high)
  if low < high
    pivot_index = partition(arr, low, high)  # Particiona o array e obtém o índice do pivô
      # Ordenar recursivamente as partições à esquerda e à direita do pivô
      quick_sort_helper(arr, low, pivot_index - 1)
      quick_sort_helper(arr, pivot_index + 1, high)
  end
end

def partition(arr, low, high)
  pivot = arr[high]  # Escolhe o último elemento como pivô
    i = low - 1 # Inicializa o índice do menor elemento

    (low..high -1).each do |j|  # Percorre o array e move os elementos menores que o pivô para a esquerda
      if arr[j] < pivot
        i += 1
          arr[i], arr[j] = arr[j], arr[i]
      end
    end
    arr[i+1], arr[high] = arr[high], arr[i+1] # Move o pivô para a posição correta
    
    i+1 # Retorna o índice do pivô
end

###########
#Teste

array =[]
5.times{
  rnd = Random.new
  array << (rnd.rand(-100..100)).to_i
}
puts "\n\nO array #{array.inspect} ordenado é = #{quick_sort(array).inspect}\n\n"


