class WordsController < ApplicationController
  @@count = 0
  def index
    session[:count] = @@count
    @count = session[:count]
    @word = (0...14).map { (65 + rand(26)).chr  }.join
    @@count += 1
  end

  def clear
    @@count = 0
    redirect_to "/"
  end
end
