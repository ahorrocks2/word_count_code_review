require('rspec')
require('word_count')

describe('String#word_count') do
  it('Returns 1 when string input is the same as argument') do
    expect(("dog").word_count("dog")).to(eq(1))
  end

  it('Returns number of times a word appears in a given string') do
    expect(("The cat in the hat").word_count("the")).to(eq(2))
  end

  it('Returns number of times a word appears in a given string even in cases of punctuation') do
    expect(("The, cat in the hat").word_count("the")).to(eq(2))
  end

end
