class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
    @errors = flash[:errors]
  end

  def show
    @dojos = Dojo.find(params[:id])
    @students = @dojos.students.all
  end

  def create
    @dojos = Dojo.create(dojo_params)
    if @dojos.valid?
      redirect_to '/dojos/', notice: "You have successfully created #{@dojos.branch}"
    else
      flash[:errors] = @dojos.errors.full_messages
      redirect_to '/dojos/new'
    end
  end

  def edit
    @errors = flash[:errors]
    @dojos = Dojo.find(params[:id])
  end

  def update
    change = Dojo.find(params[:id])
    @dojos = change.update(dojo_params)
    if change.valid?
      redirect_to '/dojos/'+params[:id], notice: "You have successfully updated #{change.branch}"
      flash[:errors] = change.errors.full_messages
      redirect_to '/dojos/'+params[:id]+'/edit'
    end
  end

  def destroy
    @destroy = Dojo.find(params[:id]).destroy
    redirect_to '/dojos/'
  end

  private
  def dojo_params
    params.require(:dojo).permit(:id, :branch, :street, :city, :state)
  end
end
