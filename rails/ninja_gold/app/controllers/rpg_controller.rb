class RpgController < ApplicationController
  def index
    if session[:gold] == nil
      session[:gold] = 0
    end

    if session[:messages] == nil
      session[:messages] = []
    end
    @messages = session[:messages].reverse
  end

  def calculate
    @date = Time.now.strftime('%Y/%m/%d %H:%M %p')
    @building = params[:building]
    if @building == 'farm'
      location == 'farm'
      @rand = rand(10..20)
      session[:gold] += @rand
      # puts '**********'
      # puts @rand
      # puts '**********'
    elsif @building == 'cave'
      @rand = rand(5..10)
      session[:gold] += @rand
      # puts '**********'
      # puts @rand
      # puts '**********'
    elsif @building == 'house'
      @rand = rand(5..10)
      session[:gold] += @rand
      # puts '**********'
      # puts @rand
      # puts '**********'
    elsif @building == 'casino'
      @rand = rand(-50..50)
      session[:gold] += @rand
      puts '**********'
      puts @rand
      puts '**********'
    end

    if @building == 'casino' && @rand > 0
      session[:messages].push('Entered a casino and won ' + @rand.to_s + ' gold! ' +' '+ @date.to_s)
    elsif @building == 'casino' && @rand < 0
      session[:messages].push('Entered a casino and lost ' + @rand.to_s + ' gold...ouch... ' +' '+ @date.to_s)
    else
      session[:messages].push('Earned ' + @rand.to_s + ' gold from the ' + @building + ' ' + @date.to_s)
    end
    puts session[:messages]
    puts '********************'
    redirect_to '/'
  end

  def reset
    session[:messages] = nil
    session[:gold] = nil
    redirect_to '/'
  end
end
