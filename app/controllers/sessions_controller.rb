class SessionsController < ApplicationController
  def new
  end
  
  def create

    @user = User.find_by(user_name: params[:user_name])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to articles_path notice: 'Logged in!'
      puts ">>>>>>>>>>>>>>>>>>>> logged in <>>>>>>>>>>>>>>>"
      puts @user.error.messages if @user.errors.any?
    else
      @name = params[:user_name]
      @password = params[:password]
      flash[:notice] = 'Oops that is not what we were expecting.'
      render 'sessions/new'
    end
  end

  def index
    flash[:notice] = nil
    render 'sessions/new'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
