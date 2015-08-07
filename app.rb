require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @word_count = params.fetch('word_count').word_count(params.fetch('word'))

  if @word_count == 1
    @time = "time"
  else
    @time = "times"
  end

  erb(:word_count)
end
