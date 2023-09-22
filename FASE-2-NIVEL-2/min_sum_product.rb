## Encontre a soma mínima dos produtos de dois arrays do mesmo tamanho, dado que k modificações são 
## permitidas no primeiro array. Em cada modificação, um elemento da primeira matriz pode ser aumentado 
## ou diminuído em 2.

def min_sum_prod(arr1, arr2, k)
    sum = arr1.zip(arr2).map { |a,b| a*b }.sum #Soma inicial 
    res =[sum]

    (1..k).each do |n|  # k modificações
        min_val = arr1.min  #Valor moinimo de arr1
        min_index = arr1.index(min_val)  #indice do valor minimo
        arr1[min_index]  += 2 #Modifique em + 2
        sum += 2 * arr2[min_index] #Recalculando apenas a parte afetada
        res << sum # adiciona o novo valor no resultado
    end

    return res.min # Retorrna o menor valor encontrado
end
