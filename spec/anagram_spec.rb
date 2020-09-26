require('anagram.rb')
require('rspec')

describe(Anagram) do
  describe("#are_words?") do
    it("checks to see if two words are words") do
      anagram = Anagram.new("deal", "lsdd")
      expect(anagram.are_words?()).to(eq(false))
    end
  end
  
  describe("#are_anagrams?") do
    it("checks to see if two words are anagrams") do
      anagram = Anagram.new("deal", "laed")
      expect(anagram.are_anagrams?()).to(eq(true))
    end
  end

  describe("#are_anagrams?") do
    it("checks to see if two words are anagrams regardless of case") do
      anagram = Anagram.new("DeAl", "laed")
      expect(anagram.are_anagrams?()).to(eq(true))
    end
  end

  describe("#are_anagrams?") do
    it("checks to see if two phrases are anagrams regardless of special characters or spaces") do
      anagram = Anagram.new("De# Al", "lead")
      expect(anagram.are_anagrams?()).to(eq(true))
    end
  end

  describe("#are_antigrams?") do
    it("checks to see if two phrases are antigrams regardless of special characters or spaces") do
      anagram = Anagram.new("green", "black")
      expect(anagram.are_antigrams?()).to(eq(true))
    end
  end  

  describe("#letters_in_common") do
    it("returns the letters shared by the two phrases") do
      anagram = Anagram.new("green", "blue")
      expect(anagram.letters_in_common()).to(eq(1))
    end
  end
end

