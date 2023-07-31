require 'http'

p "Enter two words"

user_input = gets.chomp
user_input2 = gets.chomp

response1 = HTTP.get ("https://api.wordnik.com/v4/word.json/#{user_input}/scrabbleScore?api_key=f0c54bfe816e1c9cb917306c542021034d976d6be0d159c3c")

response2 = HTTP.get ("https://api.wordnik.com/v4/word.json/#{user_input2}/scrabbleScore?api_key=f0c54bfe816e1c9cb917306c542021034d976d6be0d159c3c")

score = response1.parse(:json)
score = response2.parse(:json)

p "The score of #{user_input} is #{response1} and the score for #{user_input2} is #{response2} "


#response = HTTP.get ("https://api.wordnik.com/v4/word.json/#{user_input}/pronunciations?useCanonical=false&sourceDictionary=webster&limit=50&api_key=f0c54bfe816e1c9cb917306c542021034d976d6be0d159c3c")

#pronunciation = response.parse(:json)

#p "The pronunciation of #{user_input} is #{response}"




#response = HTTP.get ("https://api.wordnik.com/v4/word.json/#{user_input}/scrabbleScore?api_key=f0c54bfe816e1c9cb917306c542021034d976d6be0d159c3c")

#score = response.parse(:json)

#p "The score of #{user_input} is #{response}"


#response = HTTP.get ("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=f0c54bfe816e1c9cb917306c542021034d976d6be0d159c3c")
#definition = response.parse(:json)

#p "The definition of #{user_input} is #{response}."