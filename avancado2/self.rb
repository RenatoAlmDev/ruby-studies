# Self é uma variável especial que aponta para o objeto atual
class Foo
  def bar
    puts self
  end
end

foo = Foo.new
puts foo
foo.bar


# Podemos chamar criando método de classe ao invés de método de instância
class Faa
  def self.ber
    puts self
  end
end

Faa.ber


# Como o self é a própria instância, usando o self podemos acessar variáveis de instância daquela classe:
class Pen
  attr_accessor :color
  def pen_color
    puts "The pen color is " + self.color
  end
end

pen = Pen.new
pen.color = "blue"
pen.pen_color