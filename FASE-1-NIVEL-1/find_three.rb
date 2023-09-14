## Dado um array com todos os elementos distintos, encontre os três maiores elemento
def find3maiores(array)
  if array.length < 3
    return false
  elsif array.length == 3
    return array
  else
    first = -1.0/0.0 #infinito negativo (número muito, muito pequeno)
    secund = -1.0/0.0
    third = -1.0/0.0
    array.each do |num|{
      if num > first
        third = secund
        secund = first
        first = num
      elsif num > secund
        third = secund
        secund = num
      elsif num > third
        third = num
      end
    }
    return {First: first, Secund: secund, |Third: third}
    end
  end
end
