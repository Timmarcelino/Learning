## Tendo uma a data fornecida e a data de nascimento, encontre a idade para a data fornecida.
require 'date'
def calculate_age(dt_nascimento, dt_fornecida)
  format_date = "%d/%m/%Y"
    
    begin
      nasc = Date.strptime(dt_nascimento, format_date)
      data_informada = Date.strptime(dt_fornecida, format_date)
      
      anos = (data_informada.year - nasc.year)
      meses = (data_informada.month - nasc.month)
      dias = (data_informada.day - nasc.day)
      
      if dias < 0
        meses -= 1
        dias += Date.new(data_informada.year, data_informada.month, -1).day
      end
      
      if meses < 0
        anos -= 1
        meses += 12
      end
      
      return { Anos: anos, Meses: meses, Dias: dias }
    rescue ArgumentError => e
      return { error: "Erro ao analisar a data: #{e.message}" }
    end
end

###################################
#Testes

#Entrada de dados

diaN = '23'
mesN = '01'
anoN = '1981'

diaI = '17'
mesI = '09'
anoI = '2023'

dataNascimento = diaN.to_i.to_s + '/' + mesN.to_i.to_s + '/' + anoN.to_i.to_s
dataInserida = diaI.to_i.to_s + '/' + mesI.to_i.to_s + '/' + anoI.to_i.to_s
resposta = calculate_age(dataNascimento, dataInserida)

puts "\n\n A idade de acordo com os dados fornecidos é: #{resposta}\n\n"
