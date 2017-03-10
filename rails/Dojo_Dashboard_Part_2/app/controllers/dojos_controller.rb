class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
    @errors = flash[:errors]
  end

  def show
    @dojos = Dojo.find(params[:id])
  end

  def create
    @dojos = Dojo.create(dojo_params)
    if @dojos.valid?
      redirect_to '/dojos/', notice: "You have successfully created a Dojo!"
    else
      flash[:errors] = @dojos.errors.full_messages
      redirect_to '/dojos/new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def dojo_params
    params.require(:dojo).permit(:id, :branch, :street, :city, :state)
  end
end
