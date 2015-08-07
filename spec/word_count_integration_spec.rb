require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word_count path', {:type => :feature}) do
  it('Counts the number of times a given word appears in a sentence')
    visit('/')
    fill_in('word_count', :with => 'All dogs go to heaven')
    fill_in('word', :with => 'dogs')
    click_button('Send')
    expect(page).to have_content(1)
  end
end
