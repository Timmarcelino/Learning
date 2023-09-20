## Dado um array arr[] de tamanho N-1 com inteiros no intervalo de [1, N], a tarefa é encontrar o 
## número que falta nos primeiros N inteiros

def find_missing_number(arr)
  if arr.empty? # Verifique se o array está vazio
    return -1
  end
  hash = {} # Criando um hash para armazenar os elementos
  arr.each do |num|
    hash[num] = true
  end
  missing_number = 1
  (1..arr.length + 1).each do |num|
    unless hash[num] # Se o número não estiver no hash, ele é o número que falta
      return num
    end
  end
  retunr -1 # O número faltante não foi encontrado
end
#################
#TESTE

array = [1, 2, 3, 5]
resposta = find_missing_number(array)

if resposta != -1
    puts "\n\n Na lista #{array.inspect}.\n O número que falta é: #{resposta} !\n\n"
else
    puts "\n\n Na lista #{array.inspect}.\n Número que falta não encontrado!\n\n"
end
