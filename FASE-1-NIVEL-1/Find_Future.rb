## Dado um array arr[] consistindo em N strings e um array Query[] consistindo em Q consultas. 
## Cada string nas matrizes arr[] e Query[] tem o formato D/M/Y onde D, M e Y denotam a data, 
## mês e ano. Para cada consulta, a tarefa é imprimir a próxima data mais próxima do array 
## fornecido arr[]. Se tal data não existir, imprima “-1”
#######################################
require 'date'
def parse_dates(date_strings)
    formatDate = "%d/%m/%Y"
    dates = []
  
    date_strings.each do |date_str|
      begin
        date = Date.strptime(date_str, formatDate)
        dates << date
      rescue ArgumentError => e
        puts "Erro ao analisar a data: #{e.message}"
      end
    end
  
    return dates
  end
  
  def find_future(array, pesquisa)
    newArr = parse_dates(array).sort
    newPesq = parse_dates(pesquisa)
  
    resposta = []
  
    newPesq.each do |data|
      futuro = newArr.find { |dataf| dataf > data }
      resposta << (futuro || nil)
    end
  
    return resposta
  end

#######################################
#Testes

formatDate = "%d/%m/%Y"

arr = ['22/4/1233', '1/3/633', '23/5/56645', '4/12/233']
puts arr.inspect
query = []
query << "23/3/4345"
query << '12/3/201'
#query << "4/4/34234234"
puts query.inspect
#__
resposta = find_future(arr, query)
puts "\n\nA(s) data(s) futura(s) são:"
resposta.each { |i| puts i.strftime(formatDate) }