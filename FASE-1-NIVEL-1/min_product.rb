## O subconjunto de produto mínimo de uma matriz refere-se a um subconjunto de elementos da matriz de modo que o
## produto dos elementos do subconjunto seja o menor possível. Para encontrar o subconjunto mínimo de produtos,
## vários algoritmos podem ser usados, como greedy algorithms, dynamic programming e branch and bound.

def min_product_subset(arr)
  positive_numbers = []
  negative_numbers = []
  zero_count = 0

  arr.each do |num|
    if num > 0
      positive_numbers << num
    elsif num < 0
      negative_numbers << num
    else
      zero_count += 1
    end
  end

  negative_numbers.sort_by! { |num| num.abs } # Ordena os números negativos em ordem crescente pelo valor absoluto

  if positive_numbers.any? # Se houver um número positivo, inclua-o, pois multiplicar por 1 não afeta o produto
    negative_numbers.pop
  end

  # Calcula o produto dos elementos escolhidos
  result = positive_numbers.reduce(1, :*) * negative_numbers.reduce(1, :*)

  # Se houver zeros no array original, o produto final é 0
  if zero_count > 0
    result = 0
  end

  result
end

# Teste
array = [-1, -1, -2, 4, 3]
puts min_product_subset(array)
