Rails.application.routes.draw do
  root 'dojos#index'
  resources :dojos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
