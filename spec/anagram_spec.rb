require('anagram.rb')
require('rspec')

describe(Anagram) do
  describe("#is_word?") do
    it("checks to see if a string is a word based on presence of vowels") do
      anagram = Anagram.new()
      expect(anagram.is_word?("blue", "blfr")).to(eq(falserspec))
    end
  end
  
  # describe("#are_anagrams?") do
  #   it("checks to see if two words are anagrams") do
  #     anagram = Anagram.new("pea", "ape")
  #     expect(anagram.are_anagrams?()).to(eq())
  #   end
  # end
end
