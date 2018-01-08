require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do

      erb :root
    end

    get '/new' do

      erb :'pirates/new'
    end

    get '/show' do

      erb :
    end
    post '/pirates/show' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :'pirates'
    end
  end
end
