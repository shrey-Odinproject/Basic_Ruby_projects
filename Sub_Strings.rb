def substrings(input_text, word_list)
  hash = {}
  word_list.each { |wrd| hash[wrd] = 0 }
  input_text.downcase!.split(' ').each do |string| # a nested loop to compare each letter in str to each letter in dict
    word_list.each do |word|
      hash[word] += 1 if string.include?(word)
    end
  end
  hash.select { |_key, val| val > 0 } # we return only for found substrings
end
dictionary = %w[below down go going horn how howdy it i low own part partner sit]

p substrings('Hi am am groot u ar?', dictionary)
