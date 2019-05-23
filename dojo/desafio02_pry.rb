require 'httparty'
require 'rspec'
require 'pry'
include RSpec::Matchers


body = {"cep"=>"04547-130",
"logradouro"=>"Alameda Vicente Pinzon",
"complemento"=>"",
"bairro"=>"Vila Olímpia",
"localidade"=>"São Paulo",
"uf"=>"SP",
"unidade"=>"",
"ibge"=>"3550308",
"gia"=>"1004"}

get_response = HTTParty.get("https://viacep.com.br/ws/04547130/json/")

res = get_response.parsed_response

expect(get_response.code).to eq(200)
expect(get_response.message).to eq('OK')
expect(res).to eql(body)

binding.pry 
puts get_response


get_response = HTTParty.get("https://viacep.com.br/ws/AAAAAAA")

# puts "GET"
# puts "Response code: #{get_response.code}"
# puts "Response message: #{get_response.message}"
# puts "Body: #{get_response.body}"