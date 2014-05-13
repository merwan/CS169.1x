module FunWithStrings
  def palindrome?
    phrase = self.gsub(/\W/, '').upcase
    phrase == phrase.reverse
  end
  def count_words
    words = {}
    get_words.each do |word|
      words[word] = 0 unless words.has_key? word
      words[word] += 1
    end
    words
  end
  def anagram_groups
    anagrams = []
    get_words.each do |source|
      group = []
      get_words.each do |w|
        next if w.length != source.length
        is_anagram = true
        source.each_char do |c|
          is_anagram = false unless w.include? c
        end
        group << w if is_anagram
      end
      anagrams << group if group.length > 0
    end
    anagrams
  end

  private
  def get_words
    self.downcase.scan(/\w+/)
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
