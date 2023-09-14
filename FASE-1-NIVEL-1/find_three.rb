## Dado um array com todos os elementos distintos, encontre os três maiores elemento
def find3maiores(array)
  if array.length <= 3
    return array
  else
    first = -1.0/0.0 #infinito negativo (número muito, muito pequeno)
    second  = -1.0/0.0
    third = -1.0/0.0
    array.each do |num|{
      if num > first
        third = second
        second  = first
        first = num
      elsif num > second
        third = second
        second  = num
      elsif num > third
        third = num
      end
    }
    end
    return {First: first, Second : second , Third: third}
  end
end
############################

array = [1, 2 ,3]
7.times do
  rnd = rand(1..100)
  unless array.include?(rnd)
    array << rnd
  end
end
puts array.inspect
resultado = find3maiores(array)
puts "\n Os três maiores elementos são: #{resultado[:First]}, #{resultado[:Second]} e #{resultado[:Third]}\n"
