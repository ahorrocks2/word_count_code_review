class String
  define_method(:word_count) do |word|
    sentence = self.downcase().split(" ")
    word_to_count = word.downcase().split()

    count = 0
    if sentence == word_to_count
      count = 1
    else
      count = 0
    end

  end
end
