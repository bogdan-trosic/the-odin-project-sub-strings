def substrings(words_raw, dictionary)
  words_split = words_raw.downcase.split(" ")

  results_to_print = dictionary.reduce(Hash.new(0)) do |word_results, dictionary_item|
    words_split.each do |word|
      if word.include?(dictionary_item)
        word_results[dictionary_item] += 1
      end
    end
    word_results
  end

  p results_to_print
end

substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])