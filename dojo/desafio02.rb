require 'httparty'
require 'rspec'
include RSpec::Matchers

get_response = HTTParty.get("https://viacep.com.br/ws/04547130/json/")

expect(get_response.code).to eq(200)
expect(get_response.message).to eq('OK')

get_response = HTTParty.get("https://viacep.com.br/ws/99999999/json/")

puts "GET"
puts "Response code: #{get_response.code}"
puts "Response message: #{get_response.message}"
puts "Body: #{get_response.body}"