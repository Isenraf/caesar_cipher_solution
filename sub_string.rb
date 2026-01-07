def substrings(words, dictionary)
  words = words.downcase.split(" ");

  dictionary.reduce(Hash.new(0)) do |result, substring|

    words.each do |word|
      if word.include?(substring)
        result[substring] += 1
      end
    end

    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)