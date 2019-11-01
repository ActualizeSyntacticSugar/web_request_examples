require "http"

system "clear"
puts "Welcome to the Dictionary App!"
print "Enter a word: "
input_word = gets.chomp

response = HTTP.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=___")
definitions = response.parse

response = HTTP.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/topExample?useCanonical=false&api_key=___")
top_example = response.parse

response = HTTP.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/pronunciations?useCanonical=false&limit=50&api_key=___")
pronunciations = response.parse

puts "DEFINITIONS:"
index = 0
definitions.length.times do
  definition = definitions[index]
  puts "#{index + 1}. #{definition["text"]}"
  puts
  index = index + 1
end
puts

puts "TOP EXAMPLE"
puts top_example["text"]
puts

puts "PRONUNCIATIONS"
index = 0
pronunciations.length.times do
  pronunciation = pronunciations[index]
  puts "#{index + 1}. #{pronunciation["raw"]}"
  index = index + 1
end
