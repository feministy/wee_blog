get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/new' do
  erb :new
end 

get '/posts/:id' do
  id = params[:id]
  @post = Post.find(id)
  erb :post
end 

post '/posts/new' do
end 