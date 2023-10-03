## Dados os pesos e lucros de N itens, na forma de {lucro, peso} coloque esses itens em uma mochila(Knapsack)
##  de capacidade W para obter o lucro máximo na mochila.
## Obs.: Na Mochila Fracionária, podemos quebrar itens para maximizar o valor total da mochila.

def fractional_knapsack(itens, capacidade)
   
    itens.sort_by! { |item| - item[:lucro] / item[:peso] } # Classifica os itens em ordem decrescente de lucro

    total = 0.0
    mochila = []

    itens.each do |item|
        if capacidade >= item[:peso] # Se o item couber inteiro na mochila, adicionar
            mochila << item
            total += item[:lucro]
            capacidade -= item[:peso]
        else # Caso contrário adicionar uma fração do item na mochila
            fracao = capacidade.to_f / item[:peso]
            mochila << {lucro: fracao * item[:lucro], peso: capacidade}
            total += fracao * item[:lucro]
            break # mochila cheia
        end
    end
    
    return mochila, total
end


### TESTE Hash {lucro: , peso: }

arr_itens = [
    {lucro:500, peso:30 }, 
    #{lucro:60, peso:10 }, 
    #{lucro:120, peso:30 } 
] 
capacidade = 10

mochila, lucro_T = fractional_knapsack(arr_itens, capacidade)

puts "Itens na mochila:"
#mochila.each {|item| puts "Lucro: #{item[:lucro]}, Peso: #{item[:peso]}"}
puts mochila.inspect
puts "Lucro total na mochila: #{lucro_T}"
