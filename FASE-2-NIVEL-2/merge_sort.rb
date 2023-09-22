## Merge Sort é um algoritmo de ordenação eficiente que utiliza a abordagem de dividir 
## para conquistar. Ele divide a matriz não ordenada em duas metades, ordena cada 
## metade separadamente e, em seguida, combina as duas metades ordenadas para obter uma 
## matriz completamente ordenada.

def merge_sort(arr)
    return arr if arr.length <= 1
  
    # Divide o array em duas metades
    mid = arr.length / 2
    left_half = arr[0...mid]
    right_half = arr[mid..-1]
  
    # Recursivamente, ordena as duas metades
    left_half = merge_sort(left_half)
    right_half = merge_sort(right_half)
  
    # Combina as duas metades ordenadas
    merge(left_half, right_half)
end
  
def merge(left, right)
    result = []
    left_idx = 0
    right_idx = 0
  
    while left_idx < left.length && right_idx < right.length
      if left[left_idx] < right[right_idx]
        result << left[left_idx]
        left_idx += 1
      else
        result << right[right_idx]
        right_idx += 1
      end
    end
  
    # Adiciona qualquer elemento restante das duas metades
    result += left[left_idx..-1]
    result += right[right_idx..-1]
  
    result
end
  #################
  # Teste:
arr =[]
10.times{
    rnd = Random.new
    arr << (rnd.rand(-100..100)).to_i
}
sorted_arr = merge_sort(arr)
puts "Array #{arr.inspect} ordenado = #{sorted_arr.inspect}"
