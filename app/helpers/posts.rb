def all_posts
  @posts = Post.all
end 

def find_post_by_id(id)
  @post = Post.find(id)
  @id = @post.id
  @title = @post.title
  @content = @post.content
  @tags = @post.tags.all
  @user_id = @post.user_id
  @user_name = @post.user_name
end 

def create_post
  @post = Post.new(params[:post])
end 

def delete_post(id)
  Post.destroy(id)
end 

