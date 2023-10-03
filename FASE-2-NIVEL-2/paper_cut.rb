## Dado um papel de tamanho A x B. A tarefa é cortar o papel em quadrados de qualquer tamanho. 
## Encontre o número de quadrados que podem ser cortados do papel.

def minimumSquare(a, b)

    if a < b   # Colocando o lado maior em a
        a , b = b , a
    end

    square = 0

    while b > 0 do
        square += (a/b).to_i
        resto =  (a%b).to_i
        a = b
        b = resto
    end
    return square
end
################
# TESTE

h = 29
w = 13
puts "\n\nPodem ser cortados #{minimumSquare(h, w)} quadrados em uma folha de #{h} x #{w}\n\n"