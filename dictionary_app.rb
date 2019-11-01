require "http"

system "clear"
puts "Welcome to the Dictionary App!"
print "Enter a word: "
input_word = gets.chomp

response = HTTP.get("http://api.wordnik.com:80/v4/word.json/#{input_word}/definitions?limit=200&includeRelated=true&useCanonical=false&includeTags=false&api_key=___")
definitions = response.parse
p definitions
