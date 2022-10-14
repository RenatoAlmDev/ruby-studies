time = Time.now
puts time

# Temos comando time.day/time.month/time.year mas não precisamos contatenar para gerar um formato de data específico. Para isso usamos o "strftime"

puts time.strftime("%d/%m/%y")
puts time.strftime("%D") # D maíusculo devolve a data no formato americano