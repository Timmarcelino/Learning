## Dado um array de jobs.
## Cada job tem um prazo (deadline) e um lucro associado se o trabalho for concluido antes do prazo.
## Cada job tem prazo mínimo de 1 unidade de tempo.
## Maximize o lucro total se apenas um job possa ser agendado por vez.

def jobScheduling(array)
    n = array.length
    array.sort_by! { |job| -job[:profit] } # Ordenar em ordem decrescente por profit (lucro)
    
    deadline_max = array.map{|job| job[:deadline]}.max
    sequencia = Array.new(deadline_max)  # matriz para armazenar a sequência de jobs

    array.each do |job|
        deadline = job[:deadline] - 1 # Subtrair 1 do prazo para corresponder ao índice da matriz
        while deadline >= 0
            if sequencia[deadline].nil? # Verificar se o slot de prazo está vazio
            sequencia[deadline] = job[:job]  # Atribuir o job ao slot de prazo
            break
            end
            deadline -= 1 # Se o slot estiver ocupado, tentar o próximo prazo anterior
        end
    end

    return sequencia.compact # Retornar a sequência de jobs, eliminando quaisquer valores nulos
end
#################################################
## TESTE 

job_array = [
    {job: 'a', deadline: 2, profit: 100},
    {job: 'b', deadline: 1, profit: 19},
    {job: 'c', deadline: 2, profit: 27},
    {job: 'd', deadline: 1, profit: 25},
    {job: 'e', deadline: 3, profit: 15}
]

agenda = jobScheduling(job_array)
puts "Sequência de jobs: #{agenda.join(', ')}"