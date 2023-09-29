## Dado um array de jobs.
## Cada job tem um prazo (deadline) e um lucro associado se o trabalho for concluido antes do prazo.
## Cada job tem prazo mínimo de 1 unidade de tempo.
## Maximize o lucro total se apenas um job possa ser agendado por vez.

def jobScheduling(array)
    n = array.length
    array.sort_by! { |job| -job[:profit] } # Ordena decrescente por profit (lucro)
    
    deadline_max = array.map{|job| job[:deadline]}.max
    sequencia = Array.new(deadline_max)

    array.each do |job|
        deadline = job[:deadline] - 1
        while deadline >= 0
            if sequencia[deadline].nil?
            sequencia[deadline] = job[:job]
            break
            end
            deadline -= 1
        end
    end

    return sequencia
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