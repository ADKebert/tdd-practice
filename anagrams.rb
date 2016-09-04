def anagrams(word, potential_anagrams)
  letters = word.split("").sort
  potential_anagrams.select do |potential_anagram|
    potential_anagram.split("").sort == letters
  end
end
