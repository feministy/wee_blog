get '/login' do 
  erb :login
end 

get '/user/new' do
  erb :user_new
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/user/all' do
  @all_users = User.all
  erb :user_all
end 

get '/user/:id' do
  @user = User.find(params[:id])
  @all_posts = Post.find_all_by_user_id(@user.id)
  erb :user_profile
end 

post '/login' do 
  email = params[:login][:email]
  password = params[:login][:password]
  @user = User.authenticate(email, password)
  if @user
    session[:user_id] = @user.id
    redirect '/user/' + id
  else 
    redirect '/'
  end 
end 

post '/user/new' do
  @user = User.new(params[:new_user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/user/' + id
  else
    redirect '/'
  end
end 