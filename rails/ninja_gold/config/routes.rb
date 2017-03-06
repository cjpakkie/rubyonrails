Rails.application.routes.draw do
  root 'rpg#index'
  #get 'rpg/index'
  post '/calculate' => 'rpg#calculate'
  post '/reset' => 'rpg#reset'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
