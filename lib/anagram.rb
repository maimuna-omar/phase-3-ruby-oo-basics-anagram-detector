# Your code goes here!
class Anagram
    attr_reader :word
  
    def initialize(word)
      @word = word
    end
  
    def match(words)
      words.select { |w| anagram?(w) } # Select words that are anagrams of the instance's word
    end
  
    private
  
    def anagram?(other_word)
      sorted_chars(word) == sorted_chars(other_word) # Compare sorted characters of both words
    end
  
    def sorted_chars(word)
      word.downcase.chars.sort # Sort the characters of the word in lowercase
    end
  end
  