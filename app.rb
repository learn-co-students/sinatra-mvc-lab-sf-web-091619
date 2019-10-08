require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/' do
        
        #binding.pry
        erb :results
    end

    post '/piglatinize' do
        @analyzed_text = PigLatinizer.new
        erb :piglatinize
    end
end