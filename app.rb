class RedmartUsersApp < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/users' do
    @users = User.all.order('id')
    erb :'users/index'
  end

  get '/users/new' do
    erb :'users/new'
  end

  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :'users/edit'
  end

  post '/users' do
    p params[:user]
    @new_user = User.new(params[:user])
    if @new_user.save
      redirect("/users")
    else
      erb :"users/new"
    end
  end

  put '/users/:id' do
    @edited_user = User.find(params[:id])
    if @edited_user.update_attributes(params[:user])
      redirect('/users')
    end
  end

  delete '/users/:id' do
    @deleted_user = User.find(params[:id])
    if @deleted_user.destroy
      redirect('/users')
    else
      erb :"artists/ #{@deleted_artist.id}"
    end
  end

end
