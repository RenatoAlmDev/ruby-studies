require "net/http"

example = Net::HTTP.get("example.com", "/index.html")

File.open("example.html", "w") do |line|          # o "w" tem a função de sobrescrita!
  line.puts(example)
end
