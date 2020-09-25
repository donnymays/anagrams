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
  
  def are_anagrams?

  end

end
