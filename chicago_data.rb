require "http"

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")
employees = response.parse

index = 0
while index < employees.length
  p employees[index]["name"]
  index += 1
end
