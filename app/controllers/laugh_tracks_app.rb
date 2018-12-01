class LaughTracksApp < Sinatra::Base
    get '/comedians' do
        if params[:age]
            @comedians = Comedian.where(age: params[:age])
        else
            @comedians = Comedian.all
            @specials = Special.all
        end 
        
        erb :index
    end 

    get '/comedians/new' do 
        erb :new 
    end
    

end
