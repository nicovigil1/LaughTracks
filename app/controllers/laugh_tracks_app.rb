class LaughTracksApp < Sinatra::Base
    get '/comedians' do 
        erb :index
    end 
end
