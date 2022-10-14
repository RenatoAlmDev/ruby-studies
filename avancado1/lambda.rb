# Lambda podem ser salvas em variáveis para ser chamada em qualquer momento, blocos não
first_lambda = lambda { puts "Primeira Lambda"}
first_lambda.call

# Símbolo para melhor sintaxe "->"
better_lambda = -> { puts "Melhor Sintaxe"}
better_lambda.call

# Parâmetros no Lambda
param_lambda = -> (names){ names.each { |name |puts name} }

names = ["João", "Maria", "José"]

param_lambda.call(names)

# Lambda de múltiplas linhas, neste caso devemos escrever lambda e não usar o símbolo ->
my_lambda = lambda do |numbers|
  index = 0
  puts "número atual + próximo número"
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts numbers[index] + numbers[index +1]
    index += 1
  end
end

numbers = [1, 2, 3, 4]

my_lambda.call(numbers)

# Lambda passado como argumento para um método, podemos passar mais de um lambda:
def foo(met_lambda, odo_lambda) #chamamos como parâmetro normal, não precisa usar o & igual blocos
  met_lambda.call
  odo_lambda.call
end

met_lambda = lambda { puts "primeira lambda" }
odo_lambda = lambda { puts "segunda lambda" }

foo(met_lambda, odo_lambda)