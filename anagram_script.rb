#!/usr/bin/ruby
require ('./lib/anagram')

def word1()
  puts "Type a phrase"
  word1 = gets.chomp
end

def word2()
  puts "Type another phrase"
  word2 = gets.chomp
end

puts "#"*50
puts "  Anagram Checker  ".center(50, '#')
puts "#"*50

anagram = Anagram.new(word1, word2)
anagram.run_script()

puts "#"*50
puts "  Thanks For Playing  ".center(50, '#')
puts "#"*50