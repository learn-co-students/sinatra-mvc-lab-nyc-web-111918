require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    piggy=PigLatinizer.new
    @return_text=piggy.piglatinize(params[:user_phrase])
    erb :output
  end
end
