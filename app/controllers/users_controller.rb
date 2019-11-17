class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    redirect_to articles_path
  end

  def create

        @user = User.new(article_params)
        puts "**********************************************************"
        puts "created new user" 
        puts Time.now
        puts "**********************************************************"

        if @user.save
          redirect_to @user
        else
          flash[:notice] = "Not a valid user profile sorry you got to do better than that."
          render 'new'
        end
  end

  private

  def article_params
    params.require(:user).permit(:f_name, :l_name, :email, :user_name, :password, :password_confirmation)
  end

#     users GET    /users(.:format)                                                                         users#index
#         POST   /users(.:format)                                                                         users#create
# new_user GET    /users/new(.:format)                                                                     users#new
# edit_user GET    /users/:id/edit(.:format)                                                                users#edit
# user GET    /users/:id(.:format)                                                                     users#show
#     PATCH  /users/:id(.:format)                                                                     users#update
#     PUT    /users/:id(.:format)                                                                     users#update
#     DELETE /users/:id(.:format)                                                                     users#destroy
end