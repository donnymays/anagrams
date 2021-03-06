require('pry')

class Anagram 
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @common_letters
    @common_count
  end

  def are_words?()
    all_words = File.read("every_word.txt").split
    word1_array = @word1.split(" ")
    word2_array = @word2.split(" ")
    real_words1 = word1_array & all_words
    real_words2 = word2_array & all_words
    if real_words1 == [] || real_words2 == []
    return false 
    end
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
    @common_letters = (word1_array & word2_array)
    @common_count = (word1_array & word2_array).length
  end

  def run_script()
    if are_words?() == false
      puts "Please Enter a Phrase Containing English Words"
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