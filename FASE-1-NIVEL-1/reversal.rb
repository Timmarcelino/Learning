## Dado um array, gire-o para a direita em k elementos.
def rotateArray(array, k)
  n = array.length
  if k < n && k > 0
    element = array.slice!(-k, k) # .slice! : Remove e retorna os elementos removidos
    return  element + array       # O operador + retorna um novo array concatenado (união) dos dois arrays
  else
    return array
  end
end
##########################
k = 3
array = [1]
7.times do
  rnd = rand(0..100)
  unless array.include?(rnd)
    array << rnd
  end
end
puts k
puts array.inspect
puts rotateArray(array, k).inspect
