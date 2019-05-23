require 'httparty'
require 'rspec'
include RSpec::Matchers

get_response = HTTParty.get("https://jsonplaceholder.typicode.com/todos/1")

puts "GET"
puts "Response code: #{get_response.code}"
puts "Response message: #{get_response.message}"
puts "Body: #{get_response.body}"

expect(get_response.code).to eq(200)
expect(get_response.message).to eq('OK')

body ={ 'userId': 1,
        'id': 1,
        'title': 'delectus aut autem',
        'completed': false
}.to_json



expect(get_response.parsed_response).to eql(JSON.parse(body))
body2={
    title: 'Teste',
    body: 'barBrahma',
    userId: 2
}
post_response = HTTParty.post('https://jsonplaceholder.typicode.com/posts',body: body2)
    
expect(post_response.code).to eq(201)
expect(post_response.message).to eq('Created')

delete_response = HTTParty.delete('https://jsonplaceholder.typicode.com/posts/1')


   
expect(delete_response.code).to eq(200)
expect(delete_response.message).to eq('OK')
    body3={
    id: 1,
    title: 'foo',
    body: 'bar',
    userId: 1
}


put_response = HTTParty.put('https://jsonplaceholder.typicode.com/posts/1',body: body3)
expect(post_response.code).to eq(201)
expect(post_response.message).to eq('Created')