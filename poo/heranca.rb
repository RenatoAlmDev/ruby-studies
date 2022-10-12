class Animal
  def pular
    puts "ativando modo Sandy e Junior"
  end

  def dormir
    puts "a mimir!"
  end
end

class Cachorro < Animal         # símbolo "<" mostra a herança
  def latir
    puts "au au au"
  end
end

cachorro = Cachorro.new

cachorro.pular
cachorro.dormir
cachorro.latir
