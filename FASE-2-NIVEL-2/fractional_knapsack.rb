## Dados os pesos e lucros de N itens, na forma de {lucro, peso} coloque esses itens em uma mochila(Knapsack)
##  de capacidade W para obter o lucro máximo na mochila.
## Obs.: Na Mochila Fracionária, podemos quebrar itens para maximizar o valor total da mochila.

def fractional_knapsack(itens, capacidade)
   
    itens.sort_by! { |item| - item[:valor] / item[:peso] } # Classifica os itens em ordem decrescente de lucro

    total = 0.0
    mochila = []

    itens.each do |item|
        if capacidade >= item[:peso] # Se o item couber inteiro na mochila, adicionar
            mochila << item
            total += item[:valor]
            capacidade -= item[:peso]
        else # Caso contrário adicionar uma fração do item na mochila
            fracao = capacidade.to_f / item[:peso]
            mochila << {valor: fracao * item[:valor], peso: capacidade}
            total += fracao * item[:valor]
            break # mochila cheia
        end
    end
    
    return mochila, total
end


### TESTE Hash {valor: , peso: }

arr_itens = [
    {valor:100, peso:20 }, 
    {valor:60, peso:10 }, 
    {valor:120, peso:30 } 
] 
capacidade = 50

mochila, lucro_T = fractional_knapsack(arr_itens, capacidade)

puts "\n\n\nItens na mochila:"
#mochila.each {|item| puts "Valor: #{item[:valor]}, Peso: #{item[:peso]}"}
puts mochila.inspect
puts "Lucro total na mochila: #{lucro_T}\n\n\n"
