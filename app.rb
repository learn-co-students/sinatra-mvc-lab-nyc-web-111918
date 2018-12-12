require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base

  get '/' do
    params.to_s
    erb :index
  end

  post '/' do
    @text = PigLatinizer.new(params["user_phrase"])
    # binding.pry
    erb :piglatinize
  end


end #end of app class
