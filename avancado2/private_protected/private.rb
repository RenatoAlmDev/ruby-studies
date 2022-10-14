class Foo
  def call_private
    bar   # Aqui não conseguiremos chamar via SELF
  end

  private # O que tiver abaixo é privado

  def bar
    puts "private method"
  end
end

foo = Foo.new

foo.bar
foo.call_private