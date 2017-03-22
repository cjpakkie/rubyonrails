class UsersController < ApplicationController
  def new
  end

  def show
    user = User.last
    @user = user.first_name
  end

  def create
    @user = User.new(params.require(:user).permit(:first_name, :last_name, :email))
    if @user.save
      flash[:notice] = ['User successfully created']
      redirect_to user_path(@user.id)
    else
      flash[:notice] = ['User unsuccessfully created']
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path(@user.id)
    end
  end
end
