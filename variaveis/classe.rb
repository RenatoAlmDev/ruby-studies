class User
  @@user_count = 0
  def add(name)
    puts "User #{name} adicionado"
    @@user_count += 1
    puts "Total de usuários cadastrados: #{@@user_count}"
  end
end

first_user = User.new
first_user.add("Renato")

second_user = User.new
second_user.add("Renatinha")
