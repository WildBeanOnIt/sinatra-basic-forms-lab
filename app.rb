require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end
    
    post '/puppy' do
        @puppy = Puppy.new(params['name'], params['breed'], params['age'])
        erb :display_puppy
    end
    

        # Practice files 

    get '/index_console' do
        erb :index_console
    end

    get '/console_condition' do
        erb :console_condition
    end

    post '/display_consoles' do
        @console = Console.new(params['name'], params['brand'], params['condition'])
        erb :console_display
    end

end