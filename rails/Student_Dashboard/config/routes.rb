Rails.application.routes.draw do
  # get 'students/new'
  #
  # get 'students/edit'
  #
  # get 'students/show'
  #
  # get 'students/update'
  #
  # get 'students/destroy'

  root 'dojos#index'
  resources :dojos do
    resources :students
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
