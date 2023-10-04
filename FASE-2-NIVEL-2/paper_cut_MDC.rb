## Dado um papel de tamanho A x B. A tarefa é cortar o papel em quadrados de qualquer tamanho. 
## Encontre o número de quadrados que podem ser cortados do papel.
# Abordagem com recursividade utilizando o algoritmo de Eucliades


def min_squares(a, b)    
  mdc = a.gcd(b)
  if a > b  
    return b / mdc
  else
    return a / mdc
  end
end


################
# TESTE

#h = 36
#w = 30
#puts "\n\nPodem ser cortados #{min_squares(h, w)} quadrados em uma folha de #{h} x #{w}\n\n"
