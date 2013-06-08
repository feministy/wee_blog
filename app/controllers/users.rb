get '/login' do 
  erb :login, :layout => false
end 

get '/user/new' do
  erb :user_new, :layout => false
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/user/all' do
  all_users
  erb :user_all
end 

get '/user/:id' do
  find_user
  find_users_posts
  erb :user_profile
end 

post '/login' do
  authenticate_login
  if @user
    redirect '/user/' + @user.id.to_s
  else 
    redirect '/'
  end
end 

post '/user/new' do
  create_user
  if @user.save
    redirect '/user/' + @user.id.to_s
  else
    redirect '/'
  end
end 