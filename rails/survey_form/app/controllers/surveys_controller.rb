class SurveysController < ApplicationController
  @@count = 0
  @@student = []
  def index
    @errors = flash[:errors]
  end

  def submit
    @errors = []
    @@student = params[:dojo]
    if @@student[:name].empty?
      @errors.push('Name cannot be blank')
    end
    if @errors.empty?
      redirect_to '/result'
    else
      flash[:errors]=@errors
      redirect_to '/'
    end
  end

  def result
    @@count += 1
    @count = @@count
    @student = @@student
  end
end
