require('anagram.rb')
require('rspec')

describe(Anagram) do
  describe("#is_word?") do
    it("checks to see if a string is a word based on presence of vowels") do
      anagram = Anagram.new()
      expect(anagram.is_word?("blue", "blfr")).to(eq(false))
    end
  end
  
  describe("#are_anagrams?") do
    it("checks to see if two words are anagrams") do
      anagram = Anagram.new()
      expect(anagram.are_anagrams?("deal", "lead")).to(eq(true))
    end
  end

  describe("#case_insensitive?") do
    it("checks to see if two words are anagrams regardless of lettercase") do
      anagram = Anagram.new()
      expect(anagram.case_insensitive?("DeAl", "lead")).to(eq(true))
    end
  end
end
