require 'faker'

User.create(name: "Liz", email: "liz@liz.com", password_hash: "liz")
User.create(name: "Joe", email: "joe@joe.com", password_hash: "joe")
User.create(name: "Jessica", email: "jessica@jessica.com", password_hash: "jessica")
User.create(name: "Lemon", email: "lemon@lemon.com", password_hash: "lemon")
User.create(name: "Colin", email: "colin@colin.com", password_hash: "colin")



100.times do
  Post.create(title: Faker::Lorem.words(4).join(" "), content: Faker::Lorem.paragraphs(3).join("<br><br>"), user_id: (rand(5)+1))
end

20.times do
  Tag.create(name: Faker::Lorem.word)
end 

tags = Tag.all
posts = Post.all

300.times do
  Tagcloud.create(post_id: posts.sample.id, tag_id: tags.sample.id)
end   