def all_users
  @all_users = User.all
end 

def find_user
  @user = User.find(params[:id])
end 

def find_users_posts
  @all_posts = Post.find_all_by_user_id(@user.id)
end

def authenticate_login
  email = params[:login][:email]
  password = params[:login][:password]
  @user = User.authenticate(email, password) 
  session[:user_id] = @user.id if @user
end

def create_user
  @user = User.new(params[:new_user])
  session[:user_id] = @user.id if @user.save
end 