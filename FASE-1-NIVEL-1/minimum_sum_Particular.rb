## Soma mínima escolhendo o mínimo de pares da matriz
## Solução criada a partir da solicitação:
#Dado um array A[] de n elementos. Precisamos selecionar dois elementos adjacentes e excluir o maior deles e armazenar o menor.Precisamos realizar esta operação até que o array A[] contenha apenas um único elemento. Finalmente, temos que construir um array  de tal forma que a soma total do seu elemento seja mínima.

def minSum(array)
  a = array[0]
  b = array[1]
  n = array.length - 1

  for i in 2..n do
    if array[i] < a || array[i] < b
      if array[i]< a
        a = array[i]
      else
        b = array[i]
      end
    end
  end
  return a + b
end

## TESTE

arr =[]
10.times{
  rnd = Random.new
  arr << (rnd.rand(-10..1000)/100).to_i
}
#arr = [7, 2, 3, 4, 5, 6]
puts arr.inspect
puts minSum(arr)
