require('anagram.rb')
require('rspec')

describe(Anagram) do
  describe("#are_anagrams?") do
    it("checks to see if two words are words") do
      anagram = Anagram.new("deal", "ld")
      expect(anagram.are_anagrams?()).to(eq(false))
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
    anagram = Anagram.new("DeAl", "laedd")
    expect(anagram.are_anagrams?()).to(eq(true))
  end
end
end

