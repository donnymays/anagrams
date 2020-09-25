# _Ruby Project Creator_

_25 September 2020_

#### _Console application that will check if two words are anagrams_

#### By _**Donny Mays**_

## Setup/Installation Requirements
- In terminal/command line, navigate into the directory where you would like to create a new Ruby project.
- Clone this project using the 'git clone <filename>' command in terminal/command line while in the desired directory.
- Navigate to the cloned folder and run 'bundle' in your command line to download gem dependencies.
- Run 'ruby anagram_script.rb' in the terminal while still in the root directory of the new project. Answer the command propts that appear in the terminal.

## Description
_This is a project for Week 1 of the Ruby block of Epicodus.  Prompt can be seen below._

_The original instructions for the assignment include:_
Anagrams and Antigrams
Create an algorithm with an anagram method that follows the rules included below.

You should have at least one passing test for each of the included steps (in other words, a minimum of 5 tests). You only need to write unit tests written with rspec, not written specs in your README. Make sure you commit after each passing test. Your final project should have at least 6 commits, including one for each passing test.

Two words are anagrams if they contain the exact same letters in a different order. For example, "ruby" and "bury" are anagrams because they contain the same letters.

Check if two words are anagrams. If they are, your method should return something like this: "These words are anagrams."

Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".

Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels.)

If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."

Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.

## Specifications
| Spec     | Behavior | Input    | Output   |
| -------- | -------- | -------- | -------- |
| 1 | Will check to see if strings are words based on presence of vowels | "bgf" | false |
| 2 | Will check to see if two words are anagrams | "deal", "lead" | true |
| 3 | Will check to see if two words are anagrams regardless of lettercase | "lEad", "deal" | true |
| 4 | Will check to see it two words are anitgrams | "fly", "red | true |


## Known Bugs
_Tests in the anagram_spec page are not passing with current code, but the script is functional._

## Technologies Used
* Ruby
* Gems: rspec, pry

### License
Copyright (c) 2020 **_Donny Mays_**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.