## Find Maximum
## Dadas três pilhas de números positivos, a tarefa é encontrar a possível soma máxima
## igual das pilhas com a remoção dos elementos superiores permitida. As pilhas são
## representadas como uma matriz e o primeiro índice da matriz representa o elemento
## superior da pilha.

def max_equal_sum(stack1, stack2, stack3)
  sum1 = stack1.reduce(:+)
  sum2 = stack2.reduce(:+)
  sum3 = stack3.reduce(:+)

  while true
    # Encontre a pilha com a soma máxima atual
    max_sum = [sum1, sum2, sum3].max

    # Se alguma pilha estiver vazia, retorne 0 (não é possível igualar as somas)
    return 0 if max_sum == 0

    # Caso contrário, ajuste a altura da pilha correspondente
    if sum1 > max_sum
      sum1 -= stack1.shift
    elsif sum2 > max_sum
      sum2 -= stack2.shift
    elsif sum3 > max_sum
      sum3 -= stack3.shift
    else
      # Se as somas das pilhas forem iguais, retorne a soma máxima
      return max_sum
    end
  end
end

########################################################################
#TESTE

s1 = []
s2 = []
s3 = []

5.times{
  rnd = Random.new
  s1 << rnd.rand(1..10).to_i
}
3.times{
  rnd = Random.new
  s2 << rnd.rand(1..10).to_i
}
4.times{
  rnd = Random.new
  s3 << rnd.rand(1..10).to_i
}

puts s1.inspect
puts s2.inspect
puts s3.inspect
puts "A soma máxima igual dos vetores dados só pode ser: #{max_equal_sum(s1, s2, s3)}"



s1 = [3, 2, 1, 1, 1]
s2 = [4, 3, 2]
s3 = [1, 1, 4, 1]

puts s1.inspect
puts s2.inspect
puts s3.inspect
puts "A soma máxima igual dos vetores dados só pode ser: #{max_equal_sum(s1, s2, s3)}" #espera-se 9
