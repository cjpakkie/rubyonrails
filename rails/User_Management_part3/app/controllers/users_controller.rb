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
      redirect_to '/users/new'
    end
  end

  def show
    @user = User.find(params[:id])
    puts @user
  end

  def edit
    @errors = flash[:errors]
    @user = User.find(params[:id])
  end

  def update
    @change = User.find(params[:id])
    @hello = @change.update(user_params)
    if @change.valid?
      redirect_to '/users/'+params[:id]
    else
      flash[:errors] = @change.errors.full_messages
      redirect_to '/users/'+params[:id]+'/edit'
    end
  end

  def destroy
    @destroy = User.find(params[:id]).destroy
    redirect_to '/users/'
  end

  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :email, :password)
  end
end
