class Dog
  def name
    @name
  end

  def name= name
    @name = name
  end
end

dog = Dog.new
dog.name = "Pam"
puts dog.name

# USANDO O MÉTODO MAIS PRÁTICO

class Doggo
  attr_accessor :name, :age    #atribute accessor ele gera os atributos internamente
end

doggo = Doggo.new
doggo.name = "Leia"
puts doggo.name

doggo.age = "2 anos"
puts doggo.age