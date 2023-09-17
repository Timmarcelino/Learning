## Dado um array arr[] consistindo em N strings e um array Query[] consistindo em Q consultas. 
## Cada string nas matrizes arr[] e Query[] tem o formato D/M/Y onde D, M e Y denotam a data, 
## mês e ano. Para cada consulta, a tarefa é imprimir a próxima data mais próxima do array 
## fornecido arr[]. Se tal data não existir, imprima “-1”
#######################################
require 'date'
def find_future(array, pesquisa)
  formatDate = "%d/%m/%Y"
  newArr = []
  array.each{|data|
    newArr << Date.strptime(data, formatDate)
  }
  newArr.sort!
  newPesq = []
  
  pesquisa.each{|data|
    newPesq << Date.strptime(data, formatDate)
  }
  resposta = []
  for data in newPesq
    futuro = -1
    for dataf in newArr
       if dataf > data
         futuro = dataf
         break
       end
    end
    resposta << futuro
  end
  return resposta
end



#######################################
#Testes
formatDate = "%d/%m/%Y"
arr = ['22/4/1233', '1/3/633', '23/5/56645', '4/12/233']
puts arr.inspect
query = []
#query << "23/3/4345"
query << '12/3/201'
#query << "4/4/34234234"
puts query.inspect
#__
resposta = find_future(arr, query)
puts "A(s) data(s) futura(s) são:"
resposta.each { |i| puts i.strftime(formatDate) }