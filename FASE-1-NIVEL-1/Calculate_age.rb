## Tendo uma a data fornecida e a data de nascimento, encontre a idade para a data fornecida.

require 'date'
def calculateAge( dtNascimento, dtFornecida)
    formatDate = "%d/%m/%Y"
    nasc = Date.strptime(dtNascimento, formatDate)
    dataInformada = Date.strptime(dtFornecida, formatDate)

    anos = (dataInformada - nasc).to_i / 365
    if nasc.mday > dataInformada.mday
        dias = (dataInformada - Date.new((dataInformada -31).year, (dataInformada-31).mon, nasc.mday)).to_i
        if nasc.mon > dataInformada.mon
            meses = (12 - nasc.mon) + dataInformada.mon
        elsif nasc.mon == dataInformada.mon
            meses = 11
        else
            meses = dataInformada.mon - nasc.mon
        end
    else
        dias = dataInformada.mday - nasc.mday
        if nasc.mon > dataInformada.mon
            meses = (12 - nasc.mon) + dataInformada.mon + 1
        else
            meses = dataInformada.mon - nasc.mon + 1
        end
    end
    return {Anos: anos, Meses: meses, Dias: dias}
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
resposta = calculateAge(dataNascimento, dataInserida)

puts "\n\n A idade de acordo com os dados fornecidos é: #{resposta}\n\n"
