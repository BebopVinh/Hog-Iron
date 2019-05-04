Rails.application.routes.draw do
  resources :houses
  resources :teachers
  resources :klasses
  resources :students

  get '/students/:id/classes', to: 'students#klasses'
  get '/students/sort', to: 'students#sorting_hat'

  get '/hogwarts', to: 'application#index'
  get '/', to: 'application#index'

  #Custom enroll route for students and classes
  get '/klasses/:student_id/enroll', to: "klasses#enroll"

  get '/signup', to: "students#new"
  get '/login', to: "application#login"
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
