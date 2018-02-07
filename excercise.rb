require 'httparty'

# Set env variable using example api_key from wordnik website
auth_key = {api_key: "#{ENV['TEMP_WORDNIK_KEY']}"}
response = HTTParty.get('http://api.wordnik.com:80/v4/words.json/randomWords?limit=10', headers: auth_key )
response_json = JSON.parse(response.body)

puts "\nRandom Words:"
response_json.each {|word_hash|
  puts word_hash['word']
}
