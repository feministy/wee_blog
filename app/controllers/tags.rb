get '/posts/tag/:id' do
  id = params[:id]
  posts_with_tags = Tagcloud.find_all_by_tag_id(id)
  @posts = Post.find(posts_with_tags.map(&:post_id))
  erb :index
end 