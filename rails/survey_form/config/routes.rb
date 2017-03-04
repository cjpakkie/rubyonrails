Rails.application.routes.draw do
  root 'surveys#index'
  #get 'surveys/index'

  get '/result' => 'surveys#result'
  post 'surveys/submit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
