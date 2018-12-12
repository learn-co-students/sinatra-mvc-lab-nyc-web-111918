require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    new_piglatin_word = PigLatinizer.new
    input_text = params[:user_phrase]
    @pig_latin = new_piglatin_word.piglatinize(input_text)
    erb :results
  end


end #end of App class
