class String
  define_method(:word_count) do |word|
    sentence = self.downcase().split(" ")
    word_to_count = word.downcase()

    count = 0
    sentence.each() do |sentence_word|
      if sentence_word == word_to_count
        count = count.+(1)
      elsif sentence_word.chomp("!") == word_to_count || sentence_word.chomp(".") == word_to_count || sentence_word.chomp(",") == word_to_count
        count = count.+(1)
      else
        count = count.+(0)
      end
    end

    count
  end
end
