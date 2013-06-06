def all_users
  @all_users.each do |user|
    "<a href='/user/#{user.id}'>#{user.name}</a>"
  end 
end 