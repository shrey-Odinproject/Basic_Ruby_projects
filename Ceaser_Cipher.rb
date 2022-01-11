require 'pry-byebug'
# binding.pry
# HAVE TO SUBMIT AT ODIN !!!

def custom_ord(char, skip) # converts a letter
  if char.match?(/\A[a-zA-Z'-]*\z/) # only alphabets need shifting
    new_ord = char.ord + skip
    if char == char.upcase && new_ord > 90 || char == char.downcase && new_ord > 122 # we wrap according to case z to a or Z to A
      new_ord -= 26
    end
    new_ord.chr
  else
    char # not alphabet so return as it is
  end
end

def ord_on_word(word, skip) # converts a word
  word.split('').map { |letter| custom_ord(letter, skip) }.join('')
end

def encode_sentence(sentence, skip) # converts a sentence
  sentence.split(' ').map { |word| ord_on_word(word, skip) }.join(' ')
end

puts 'enter string'
sentence = gets
puts 'enter +ve KEY'
key = -1
while key < 0
  key = gets.chomp.to_i
  p 'entr +ve bruh' if key < 0
end
p encode_sentence(sentence, key)
