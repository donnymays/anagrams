class Anagram
  attr_accessor(:word1, :word2)
  
  def initialize
    @word1 = word1
    @word2 = word2
  end

  def is_word?(word1, word2)
    if word1 || word2 !=~ /[aeiouy]/
      return false
      print "You need to input actual words!"
    end
  end
  
  def are_anagrams?(word1, word2)
   

  end

end
