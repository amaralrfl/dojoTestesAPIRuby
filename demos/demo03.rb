require 'httparty'

get_response = HTTParty.get("https://reqres.in/api/users/2")

puts "GET"
puts "Response code: #{get_response.code}"
puts "Response message: #{get_response.message}"
puts "Body: #{get_response.body}"

