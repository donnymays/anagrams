class Anagram
  attr_accessor(:word1, :word2)
  
  def initialize
    @word1 = word1
    @word2 = word2
  end

  def is_word?(word1, word2)
    if word1 || word2 !=~ /[aeiouy]/
      return false
    end
  end
  
  def are_anagrams?(word1, word2)
   if word1.chars.sort() == word2.chars.sort()
    return true
   end
  end

  def case_insensitive?(word1, word2)
    if word1.downcase().chars.sort() == word2.downcase().chars.sort()
      return true
    end
  end

end
