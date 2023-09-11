## Bubble Sort é o algoritmo de classificação mais simples que funciona trocando
## repetidamente os elementos adjacentes se eles estiverem na ordem errada
## Ordenação percorre da Esquerda comparando os elementos adjacentes
## e o mais alto é colocado no lado direito
## Assim o elemento Maior é movido primeiro para a extremidade Direita
## Depois encontra o segundo maior e assim por diante
## até que todos os elementos estejam ordenados.
## Esse algoritmno utilizará de recursividade para acelerar a ordenação

def bubbleSort(array, n = array.length)
  return array if n <= 1

  for i in 0..(n-2)
    if array[i] > array[i+1]
      array[i], array[i+1] = array[i+1], array[i]
      #puts array.inspect  #Verificação de cada interação de troca
    end
  end
  bubbleSort(array, n-1)
end

### Testes e implementações

array = []
10.times{
  rnd = Random.new
  array << (rnd.rand(-100..100000)/100).to_i
}

puts "\n\n Array original -->  #{array.inspect} \n\n"
puts  "\n\n Array ordenado --> #{(bubbleSort(array)).inspect} \n\n"
