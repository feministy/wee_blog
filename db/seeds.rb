require 'faker'

100 times do
  Post.create(title: Faker::Lorem.words(4).join(" "), content: Faker::Lorem.paragraphs(3))
end

20 times do
  Tag.create(name: Faker::Lorem.word)
end 

tags = Tag.all
posts = Post.all

300 times do
  Tagcloud.create(post_id: posts.sample, tag_id: tags.sample)
end   