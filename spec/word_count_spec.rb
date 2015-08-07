require('rspec')
require('word_count')

describe('String#word_count') do
  it('Returns 1 when string input is the same as argument') do
    expect(("dog").word_count("dog")).to(eq(1))
  end
end
