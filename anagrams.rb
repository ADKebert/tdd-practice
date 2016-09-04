def anagrams(word, potential_anagrams)
  letters = word.downcase.split("").sort

  potential_anagrams.select do |potential_anagram|
    potential_anagram.downcase != word.downcase &&
    potential_anagram.downcase.split("").sort == letters
  end
end
