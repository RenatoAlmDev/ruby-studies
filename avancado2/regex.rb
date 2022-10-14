# Dentro de barras
/abcd/

# Dentro de r{}
%r{abcd}

# Via classe
Regexp.new("abcd")



# Cecagem de condição

/by/ =~ 'ruby'
# Tem "by" em ruby? ATENÇÃO: ele não é booleano, vai informar a posição da ocorrência

# Match
phrase = "hello, how are you?"

match_data = /how/.match(phrase)
# Resposta: "how" vai armazenar a informação em "match_data"

match_data.pre_match
# Resposta: "heello, " que é o que vem ANTES de HOW

match_data.post_match
# Resposta: " are you?" vem DEPOIS de HOW inclusive os espaços



# Caracteres especiais
# Para localizá-los temos que colocar uma barra invertida antes:
/\?/


# Margem de aceitação
# Utilizamos entre colchetes:

/[1-5]/
/[a-z]/ #Lembrando que temos Case sensitive



# Repetições
# Exemplo do telefone:

/[1-9][0-9]-[9][0-9]{8}/
# o número dentro das chaves indica a quantidade de vezes que vamos repetir a condição
# se utilizarmos {8,} indicamos que é 8 OU MAIS


