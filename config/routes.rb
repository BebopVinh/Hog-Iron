Rails.application.routes.draw do
  resources :houses
  resources :teachers
  resources :klasses
  resources :students

  get 'klasses/:student_id/enroll', to: "klasses#enroll"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
