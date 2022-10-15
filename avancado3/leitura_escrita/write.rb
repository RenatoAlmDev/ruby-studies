File.open("shopping-list.txt", "a") do |line| # "a" é append, vai adicionar ao final
  line.puts("arroz")
  line.puts("feijão")
  line.print("azeite ")
  line.print("de ")
  line.print("oliva")
end