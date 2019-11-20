require_relative 'config/environment'

class App < Sinatra::Base
    # In app.rb build out a GET request to load a homepage. The homepage should go to the main route /.
    get '/' do
        erb :index
    end
    # The home page will also need a new view index.erb. This page should welcome you to the Puppy Adoption Site. Add this view to the controller action.
    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])
        # @puppy.name = 
        # @puppy.breed =
        # @puppy.age =
        erb :display_puppy
    end
end
