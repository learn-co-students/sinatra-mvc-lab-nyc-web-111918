require_relative 'config/environment'
require_all 'models'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_word = params["user_phrase"]

    word = PigLatinizer.new
    @pig_latinized_word = word.to_pig_latin(user_word)
    erb :piglatinize
  end
end
