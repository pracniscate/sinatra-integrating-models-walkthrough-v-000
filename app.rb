require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do # renders the index.rb page
    erb :index
  end

  post '/' do # receives the form data through params & renders the results page
    text_from_user = params[:user_text]

    erb :results
  end
end
