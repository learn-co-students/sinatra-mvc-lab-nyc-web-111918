require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/piglatinize' do
    @english_phrase = params[:user_phrase]
    phrase = PigLatinizer.new
    @piglatin = phrase.piglatinize(params[:user_phrase])
    erb :results
  end
end
