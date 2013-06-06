get '/' do
  @posts = Post.all
  erb :index
end

not_found do
 erb :error
end 