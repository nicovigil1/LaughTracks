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

    get '/comedians/specials' do 
        erb :specials
    end 

    post '/comedians' do
        image_name = params[:comedian][:headshot][:filename]
        image = params[:comedian][:headshot][:tempfile]
        
        File.open("./public/#{image_name}", 'wb') do |f|
            f.write(image.read)
        end 

        parameter = Comedian.strip(params)
        
        Comedian.create(parameter)
        redirect '/comedians'
    end

    post '/comedians/specials' do
        image_name = params[:special][:image][:filename]
        image = params[:special][:image][:tempfile]
        
        File.open("./public/#{image_name}", 'wb') do |f|
            f.write(image.read)
        end 
        
        parameter = Special.strip(params)

        comedian = Comedian.find_by(name: params["comedian_name"])
        comedian.specials.create(parameter) 

        redirect '/comedians'
    end

        

    
end
