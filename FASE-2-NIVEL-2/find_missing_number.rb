
## Dado um array arr[] de tamanho N-1 com inteiros no intervalo de [1, N], a tarefa é encontrar o 
## número que falta nos primeiros N inteiros

def find_missing_number(arr)
  return -1 if arr.empty?  #Verifica se o array está vazio
  
  n = arr.length + 1 #Tamanho esperado do array
  soma_esperada = (n * (n+1)) / 2  # Soma total esperada

  soma_atual = arr.sum # Soma dos elementos atuais 

  if soma_esperada - soma_atual > 0
    return soma_esperada - soma_atual
  else
    return -1
  end
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
