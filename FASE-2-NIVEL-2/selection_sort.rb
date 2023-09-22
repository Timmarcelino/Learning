## Selection Sort seleciona repetidamente o menor (ou maior) elemento da parte não 
## classificada da lista e o troca pelo primeiro elemento da parte não classificada. 
## Este processo é repetido para a parte restante não classificada até que toda a lista 
## seja classificada.

def selection_sort(arr)
    n = arr.length  
    # Itera por todos os elementos do array
    (0..n - 1).each do |i|
      # Encontra o índice do menor elemento restante no array não ordenado
      min_index = i
      (i + 1..n - 1).each do |j|
        min_index = j if arr[j] < arr[min_index]
      end

      # Troca o elemento atual com o menor elemento encontrado
      arr[i], arr[min_index] = arr[min_index], arr[i]
    end
    return arr
end
###########################
#Teste:
array =[]
5.times{
  rnd = Random.new
  array << (rnd.rand(-100..100)).to_i
}
array_ordenado = selection_sort(array)
puts "\n\nO array #{array.inspect} ordenado é = #{array_ordenado.inspect}\n\n"


