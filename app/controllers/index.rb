get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/new' do
  erb :new
end 

get '/posts/:id/edit' do
  id = params[:id]
  @post = Post.find(id)
  erb :edit
end 

get '/posts/:id' do
  id = params[:id]
  @post = Post.find(id)
  erb :post
end 

post '/posts/new' do
  @post = Post.new(params[:post])
  if @post.save
    redirect to '/'
  else
    erb :error
  end 
end 

post '/posts/:id/edit' do
  id = params[:id]
  @post = Post.find(id)
    if @post.update_attributes(params[:post])
      redirect '/posts/:id'
    else 
      erb :error
    end 
end 

not_found do
 erb :error
end 