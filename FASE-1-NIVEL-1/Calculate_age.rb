## Tendo uma a data fornecida e a data de nascimento, encontre a idade para a data fornecida.



###################################
#Testes

#Entrada de dados

diaN = '23'
mesN = '09'
anoN = '1981'

diaI = '03'
mesI = '09'
anoI = '2023'

dataNascimento = diaN.to_i.to_s + '/' + mesN.to_i.to_s + '/' + anoN.to_i.to_s
dataInserida = diaI.to_i.to_s + '/' + mesI.to_i.to_s + '/' + anoI.to_i.to_s
calculateAge(dataNascimento, dataInserida)