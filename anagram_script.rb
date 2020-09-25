#!/usr/bin/ruby
require ('./lib/anagram')

puts "#"*50
puts "  Anagram Checker  ".center(50, '#')
puts "#"*50

anagram = Anagram.new()

anagram.run_script()

puts "#"*50
puts "  Thanks For Playing  ".center(50, '#')
puts "#"*50