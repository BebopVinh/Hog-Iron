Rails.application.routes.draw do
  resources :houses
  resources :teachers
  resources :klasses
  resources :students

  get '/hogwarts', to: 'application#index'
  get '/', to: 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
