require 'httparty'

#POST
post_response  = HTTParty.post('https://reqres.in/api/users', :body => {:name => 'morpheus', :job => 'leader'})

puts "POST"
puts "Response code: #{post_response.code}"
puts "Response message: #{post_response.message}"
puts "Body: #{post_response.body}"