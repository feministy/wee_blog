get '/' do
  @posts = Post.all
  erb :index
end

get '/posts/:id' do
  id = params[:id]
  @post = Post.find(id)
  erb :post
end 