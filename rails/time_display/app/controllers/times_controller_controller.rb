class TimesControllerController < ApplicationController
  def main
    @date = Time.now.strftime("%b %d, %Y")
    @time = Time.now.strftime("%I:%M %p")
  end
end
