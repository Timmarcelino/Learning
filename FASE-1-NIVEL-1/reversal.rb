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
