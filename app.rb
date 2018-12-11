require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinizer' do
    @analyzed_text = PigLatinizer.new(params[:user_text])

    erb :piglatinizer
  end
end
