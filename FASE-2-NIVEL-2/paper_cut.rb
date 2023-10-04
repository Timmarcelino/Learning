## Dado um papel de tamanho A x B. A tarefa é cortar o papel em quadrados de qualquer tamanho. 
## Encontre o número de quadrados que podem ser cortados do papel.

def minimumSquare(a, b)
    squares = 0    
    while b > 0 && a > 0 do
        if a >= b   #  Significa que um quadrado de tamanho 'b x b' cabe no papel.
            squares += (a / b)  # Adiciona a quantidade de quadrados '(b x b)' que podem ser cortados na direção de 'a'
            a %= b   # Atualiza o valor de 'a' para ser o papel restante após cortar os quadrados
        else # Significa que um quadrado de tamanho 'a x a' cabe no papel.
            squares += (b / a)  # Adiciona a quantidade de quadrados '(a x a)' que podem ser cortados na direção de 'b'
            b %= a  # Atualiza o valor de 'b' para ser o papel restante após cortar os quadrados
        end        
    end 
    return squares
end
################
# TESTE

h = 13
w = 29
puts "\n\nPodem ser cortados #{minimumSquare(h, w)} quadrados em uma folha de #{h} x #{w}\n\n"