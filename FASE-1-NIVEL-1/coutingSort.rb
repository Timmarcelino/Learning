# A classificação por contagem é uma técnica de classificação baseada em chaves entre um
# intervalo específico. Funciona contando o número de objetos com valores-chave distintos
# Nessa implementação todos os elementos do array que vamos ordenar são inteiros positivos
# não há repetição de elementos no array que vamos ordenar;

def coutingSort(array)
  n = array.length
  k = array.max # Maior valor do array

  ctArray = Array.new(k, 0)   #Array auxiliar com zeros

  array.each { |i| ctArray[i-1] += 1 }  # Frequencia de cada elemento

  (1...k).each {|i| ctArray[i] += ctArray[i-1]}  #Atualização para posição correta

  output = Array.new(n)

  (n-1).downto(0) do |i|  # Inserir os elementos ordenados em Output
    output[ctArray[array[i]-1]-1]= array[i]
    ctArray[array[i]-1] -= 1
  end

  return output

end

### Testes e implementações

array = []
10.times{
rnd = Random.new
array << (rnd.rand(0..1000)).to_i
}
puts  "\n\n Array ordenado --> #{(coutingSort(array)).inspect} \n\n"
