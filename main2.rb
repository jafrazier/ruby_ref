# require 'curb'
# require 'json'
#
# myPokemon = [ 
# 'https://raw.githubusercontent.com/jafrazier/myapi/master/poke1.json',
# 'https://raw.githubusercontent.com/jafrazier/myapi/master/poke2.json',
# 'https://raw.githubusercontent.com/jafrazier/myapi/master/poke3.json',
# 'https://raw.githubusercontent.com/jafrazier/myapi/master/poke4.json',
# 'https://raw.githubusercontent.com/jafrazier/myapi/master/poke5.json',
# 'https://raw.githubusercontent.com/jafrazier/myapi/master/poke6.json'
# ]
# all_pokemon =[]
#
# class Pokemon
#   def initialize(name,hp)
#     @name = name
#     @hp = hp
#   end
# end
# myPokemon.each {|url|
#   request = Curl::Easy.perform(url)
#   data = JSON.parse(request.body_str)
#   pk = Pokemon.new(
#     data['name']
#     data['stats'][5]['base_stat']
#   )
# all_pokemon << pk
# }


# def panagram(sentance)
#   alphabets = ('a'...'z').to_a
#   checker = sentance.downcase.split('')
#   if alphabets & checker == alphabets
#     p 'panagrm'
#   else
#     p 'not panagrm'
#   end
# end



def is_panagram(sentance)
  abc = ('a'..'z').to_a
  letters = Hash.new{0}
  abc.each do |letter|
    letters[letter] = 0
end
  sentance = sentance.gsub(/\s+/,"")
  char_in_sentance = sentance.downcase.split('')
  x = letters.keys
  char_in_sentance.each { |y|
    if x.include?(y)
      letters[y] += 1
    end
  }
  if letters.values.include?(0)
    p false
  else
    p true
  end
end

is_panagram('The quick brown fox jumps over the lazy dog')
