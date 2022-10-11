def talk(first_name, last_name) #parâmetros
  puts "Olá #{first_name} #{last_name}, como você está?"
end

first_name = 'Leonardo'
last_name = 'Scorza'

talk(first_name, last_name)

# Quando encapsulamos em um método, precisamos chamar/executar o método

def signal(color = 'vermelho')
  puts "O sinal está #{color}"
end
signal 

color = 'verde'
signal(color)