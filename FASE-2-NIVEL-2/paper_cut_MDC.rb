## Dado um papel de tamanho A x B. A tarefa é cortar o papel em quadrados de qualquer tamanho. 
## Encontre o número de quadrados que podem ser cortados do papel.
# Abordagem com recursividade utilizando o algoritmo de Eucliades


def min_squares(a, b)    
  gcd = euclidean_gcd(a, b)  # Encontra o gcd de a e b    
  return (a / gcd) + (b / gcd) # Calcula o número de quadrados que podem ser cortados
end

def euclidean_gcd(a, b)    # GCD é número inteiro positivo mais alto que é um divisor de a e b
    if b == 0
      return a
    end      
    return euclidean_gcd(b, a % b) 
end


################
# TESTE

h = 36
w = 30
puts "\n\nPodem ser cortados #{min_squares(h, w)} quadrados em uma folha de #{h} x #{w}\n\n"
