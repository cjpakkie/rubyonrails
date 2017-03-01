class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
    render "new"
  end

  def create
    names = ["Kimberly", "Jenna", "Bob", "Michelle", "Sarah", "Andrew"]
    User.create(name:names.sample)
    redirect_to "/users/"
  end

  def show
    render json: User.find(params[:id])
  end

  def edit
  end
end
