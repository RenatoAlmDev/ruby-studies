# Definimos o bloco dentro de chaves quando ele só tem uma linha:
5.times { puts "Exec the block" }

# O bloco também pode receber parâmetros:
sum = 0
numbers = [5, 10, 15]
numbers.each {|number| sum += number}
puts sum

# Bloco de múltiplas linhas:
foo = {2 => 3, 4 => 5}

foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts "---"
end

# Método que recebe um bloco como parâmetro
def foo
  # chamada do bloco
  yield
  yield
end

foo {puts "Bloco executado"}

# Verificação condicional
def foi
  if block_given?
    yield
  else
    puts "Sem parâmetro do tipo de bloco"
  end
end

foi #chamada sem passar o bloco
foi { puts "Com parâmetro do tipo de bloco"}

# ATENÇÃO: SÓ PODEMOS PASSAR UM BLOCO POR MÉTODO

def faa(name, &block)
  @name = name
  block.call
end

faa("Renato") { puts "Olá #{@name}"}

# Bloco como parâmetro de várias linhas:
def fai(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers = { 2 => 2, 3 => 3, 4 => 4}

fai(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "---"
end