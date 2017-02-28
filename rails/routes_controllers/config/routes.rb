Rails.application.routes.draw do

  get '/hello/' => 'unrestfuls#hello'

  get '/say/hello/' => 'unrestfuls#say'

  get '/say/hello/joe' => 'unrestfuls#joe'

  get '/say/hello/michael' => 'unrestfuls#michael'

  get '/' => 'unrestfuls#home'

  get '/times' => 'unrestfuls#times'

  get '/times/restart' => 'unrestfuls#restart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
