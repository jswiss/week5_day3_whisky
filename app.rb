class Dramr < Sinatra::Base

  # General route actions
  get '/' do
    erb :home
  end

  get '/about' do
    erb :about
  end

  # RESTful Routes for Whisky Controller Actions
  # index
  get '/whiskies' do
    @whiskies = Whisky.all
    erb(:"whiskies/index")
  end

  # new
  get '/whiskies/new' do
    @whisky = Whisky.new
    erb(:"whiskies/new")
  end

  # create
  post '/whiskies' do
    @whisky = Whisky.new(params[:whisky])
    if @whisky.save
      redirect("/whiskies/#{@whisky.id}")
    else
      erb(:"whiskies/edit")
    end
  end  

  # show
  get '/whiskies/:id' do
    @whisky = Whisky.find(params[:id])
    erb(:"whiskies/show")
  end

  # edit
  get '/whiskies/:id/edit' do
    @whisky = Whisky.find(params[:id])
    erb(:"whiskies/edit")
  end

  # update
  put '/whiskies/:id' do
    @whisky = Whisky.find(params[:id])
    if @whisky.update(params[:whisky])
      redirect("/whiskies/#{@whisky.id}")
    else
    erb(:"whiskies/edit")
    end
  end

  # delete
  delete '/whiskies/:id/delete' do
    @whisky = Whisky.find(params[:id])
    if @whisky.destroy
      redirect("/whiskies")
    else
      redirect("/whiskies/#{@whisky.id}")
    end
  end

end
