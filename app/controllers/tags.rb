get '/posts/tag/:tag_id' do
  tags = Tags.find(params[:tag_id])
  @posts = tags.posts
  erb :posts_all
end 