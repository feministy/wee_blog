get '/posts/all' do
  all_posts
  erb :posts_all
end 

get '/posts/new' do
  erb :new, :layout => false
end 

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  find_post_by_id(params[:id])
  erb :edit
end 

get '/posts/:id/delete' do
  find_post_by_id(params[:id])
  erb :delete
end 

get '/posts/:id' do
  find_post_by_id(params[:id])
  erb :post
end 

post '/posts/new' do
  create_post
  if @post.save
    redirect to '/posts/' + @post.id.to_s
  else
    erb :error
  end 
end 

post '/posts/:id/edit' do
  find_post_by_id(params[:id])
  if @post.update_attributes(params[:post])
    redirect '/posts/' + @id.to_s
  else 
    erb :error
  end 
end 

post '/posts/:id/delete' do
  delete_post(params[:id])
  redirect '/'
end 