module FunWithStrings
  def palindrome?
    phrase = self.gsub(/\W/, '').upcase
    phrase == phrase.reverse
  end
  def count_words
    words = {}
    self.downcase.split.each do |word|
      words[word] = 0 unless words.has_key? word
      words[word] += 1
    end
    words
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
