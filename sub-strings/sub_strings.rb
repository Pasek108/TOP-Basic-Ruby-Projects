# frozen_string_literal: true

# takes text and array of valid substrings
# returns a hash listing each substring that was found in the text and how many times it was found
def substrings(text, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |word, counter|
    occurences = text.downcase.scan(word.downcase).length
    counter[word.downcase] = occurences unless occurences.zero?
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts 'Dictionary:'
puts dictionary.to_s
puts ''

text = 'below'
puts "Text: '#{text}\'"
puts substrings(text, dictionary)
puts ''

text = "Howdy partner, sit down! How's it going?"
puts "Text: '#{text}\'"
puts substrings(text, dictionary)
