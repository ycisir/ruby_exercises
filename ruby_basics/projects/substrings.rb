# frozen_string_literal: true

# project 2
dict = %w[below down go going horn how howdy it i low own part partner sit]
word = "Howdy partner, sit down! How's it going?"

def substrings(word, dict)
  normalize = word.downcase
  dict.reduce(Hash.new(0)) do |result, matches|
    result[matches] = normalize.scan(matches).length
    result = result.select { |_k, v| v.positive? }
    result
  end
end

puts substrings(word, dict)
# puts substrings("below", dict)
