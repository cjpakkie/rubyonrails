class UsersController < ApplicationController
  def index
    @users = User.all
    puts @users
  end

  def new
    @errors = flash[:errors]
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to '/users'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to 'users/new'
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
