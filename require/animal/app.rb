# require "./animal.rb" assim ele leva em conta o local em que estamos executando
require_relative "animal"
require_relative "cachorro"

# Não precisa exportar, ao importarmos é como se estivéssemos montando a página na ordem em que escrevemos o require (parecido com express)

puts "--Animal--"
animal = Animal.new
animal.pular
animal.dormir

puts "--Cachorro--"
cachorro = Cachorro.new
cachorro.pular
cachorro.latir