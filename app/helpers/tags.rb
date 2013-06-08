def pretty_form_tags
  names = @tags.map(&:name)
  names.join(", ")
end 

def find_posts_with_tags(id)
  posts_with_tags = Tagcloud.find_all_by_tag_id(id)
  @posts = Post.find(posts_with_tags.map(&:post_id))
end 