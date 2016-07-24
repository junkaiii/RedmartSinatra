class RedmartUsersApp < Sinatra::Base
  # INDEX
  get '/' do
    erb :home
  end

  # USERS
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
      redirect('/users')
    else
      erb :"users/new"
    end
  end

  put '/users/:id' do
    @edited_user = User.find(params[:id])
    redirect('/users') if @edited_user.update_attributes(params[:user])
  end

  delete '/users/:id' do
    @deleted_user = User.find(params[:id])
    if @deleted_user.destroy
      redirect('/users')
    else
      erb :"artists/ #{@deleted_artist.id}"
    end
  end

  # PRODUCTS
  get '/products' do
    @products = Product.all.order('id')
    erb :'products/index'
  end

  get '/products/:id' do
    if params[:id] == 'new'
      erb :'products/new'
    else
      @product = Product.find(params[:id])
      erb :'products/show'
    end
  end

  get '/products/:id/edit' do
    @product = Product.find(params[:id])
    erb :'products/edit'
  end

  post '/products' do
    p params[:product]
    if @new_product = Product.new(params[:product])
      redirect('/products') if @new_product.save
    else
      erb :"products/new"
    end
  end

  put '/products/:id' do
    @edited_product = Product.find(params[:id])
    redirect('/products') if @edited_product.update_attributes(params[:product])
  end

  delete '/products/:id' do
    @deleted_product = Product.find(params[:id])
    if @deleted_product.destroy
      redirect('/products')
    else
      erb :"products/#{@deleted_product.id}"
    end
  end
end
