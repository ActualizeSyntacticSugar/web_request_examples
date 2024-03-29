require "http"

while true
  system "clear"
  puts "Welcome to the Weather App!"
  puts "Enter the name of a city:"
  input_city = gets.chomp

  response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{input_city}&units=imperial&APPID=____")
  data = response.parse

  temperature = data["main"]["temp"]
  description = data["weather"][0]["description"]

  puts "Today in #{input_city} it is #{temperature} degrees outside with #{description}."

  puts "Press q to quit, or any other key to continue"
  input_choice = gets.chomp
  if input_choice == "q"
    break
  end
end
