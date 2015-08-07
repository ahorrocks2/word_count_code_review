class String
  define_method(:word_count) do |word|
    sentence = self.downcase().split(" ")
    word_to_count = word.downcase()

    count = 0
    sentence.each() do |sentence_word|
      last_character = sentence_word.split("").pop()

      if last_character === ("!" || "." || ",")
        sentence_word = sentence_word.chomp(last_character)
      else
        sentence_word = sentence_word
      end

      if sentence_word == word_to_count
        count = count.+(1)
      else
        count = count.+(0)
      end

    end

    count
  end
end
