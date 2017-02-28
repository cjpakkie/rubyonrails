class UnrestfulsController < ApplicationController
  def hello
    render :text => "Hello CodingDojo!"
  end

  def say
    render :text => "Saying Hello!"
  end

  def joe
    render :text => "Saying Hello Joe!"
  end

  def michael
    redirect_to '/say/hello/joe'
  end

  def home
    render :text => 'What do you want me to say???'
  end

  def times
    session[:total] += 1
    render :text => "You visited this url #{session[:total]} time(s)"
  end

  def restart
    session[:total] = 0
    render :text => "DESTROYED THE SESSION!"
  end
end
