require "pry-byebug"

ALPHABET = [
  'a','b','c','d','e', 
  'f','g','h','i','j',
  'k','l','m','n','o',
  'p','q','r','s','t',
  'u','v','w','x','y',
  'z'
]
ALPHABET_SIZE = ALPHABET.length

puts "Welcome to the Caesar cipher encryption"
puts "What do you want to encrypt?"

phrase = gets.chomp.split("")

puts "What will be the shift factor?"

shift_factor = gets.chomp.to_i

result = phrase.reduce("") do |accumulator, current_character|
  index = ALPHABET.find_index(current_character.t)
  
  if !index
    accumulator += current_character
  else
    shift = index + shift_factor

    shift > ALPHABET_SIZE                         ?
    accumulator += ALPHABET[shift - ALPHABET_SIZE]:
    accumulator += ALPHABET[shift]
  end
end

puts result


