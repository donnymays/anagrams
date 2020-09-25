require('pry')

class Anagram  
  def initialize()
    @word1
    @word2
    @common_letters
    @common_count
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
    all_words = File.read("every_word.txt").split
    return false unless ((all_words.include?(@word1)) && (all_words.include?(@word2)))
  end
  
  def are_anagrams?()
    if @word1.gsub(/[^a-zA-Z0-9\-]/,"").downcase().chars.sort() == @word2.gsub(/[^a-zA-Z0-9\-]/,"").downcase().chars.sort()
      return true 
    end
  end

  def are_antigrams?()
    word1_array = @word1.gsub(/[^a-zA-Z0-9\-]/,"").downcase().split("")
    word2_array = @word2.gsub(/[^a-zA-Z0-9\-]/,"").downcase().split("")
    if word1_array & word2_array == []
      return true
    end
  end

  def letters_in_common()
    word1_array = @word1.gsub(/[^a-zA-Z0-9\-]/,"").downcase().split("")
    word2_array = @word2.gsub(/[^a-zA-Z0-9\-]/,"").downcase().split("")
    @common_count = (word1_array & word2_array).length
    @common_letters = (word1_array & word2_array)
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
      letters_in_common()
      if @common_count == 1
        puts "Your phrases are neither anagrams nor antigrams, but they do have #{@common_count} letter in common: #{@common_letters.join()}."
      elsif @common_count == 2
        puts "Your phrases are neither anagrams nor antigrams, but they do have #{@common_count} letters in common: #{@common_letters.join(" & ")}."
      else
          puts "Your phrases are neither anagrams nor antigrams, but they do have #{@common_count} letters in common: #{@common_letters.insert(-2, "and").join(", ")}."
      end
    end
  end
end