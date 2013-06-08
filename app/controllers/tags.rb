get '/posts/tag/:tag_id' do
  find_posts_with_tags(params[:tag_id])
  erb :posts_all
end 