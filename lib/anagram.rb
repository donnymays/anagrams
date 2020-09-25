require('pry')

class Anagram
  attr_accessor(:word1, :word2)
  
  def initialize()
    @word1
    @word2
  end

  def word1()
    puts "Type a phrase"
    @word1 = gets.chomp
  end
  
  def word2()
    puts "Type another phrase"
    @word2 = gets.chomp
  end

  def are_words?()
    if @word1.scan(/[aeiouy]/).count == 0 || @word2.scan(/[aeiouy]/).count == 0
      return false
    end
  end
  
  def are_anagrams?()
    if @word1.gsub(/[^a-zA-Z0-9\-]/,"").downcase().chars.sort() == @word2.gsub(/[^a-zA-Z0-9\-]/,"").downcase().chars.sort()
      return true 
    end
  end

  def are_antigrams?()
    word1_array = @word1.downcase().split("")
    word2_array = @word2.downcase().split("")
    if word1_array & word2_array == []
      return true
    end
  end

  def run_script()
    word1()
    word2()
    if are_words?() == false
      puts "Please Enter a Word"
    elsif are_anagrams?() == true
      puts "Your phrases are anagrams"
    elsif are_antigrams?() == true
      puts "Your phrases are antigrams"
    else
      puts "Your phrases are neither anagrams no antigrams"
    end
  end
end
