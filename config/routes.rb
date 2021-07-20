Rails.application.routes.draw do
  devise_for :users
  resources :appointments
  post '/check_in', to: 'appointments#check_in' 
  post '/lunch_start', to: 'appointments#lunch_start' 
  post '/lunch_end', to: 'appointments#lunch_end' 
  post '/check_out', to: 'appointments#check_out' 
  root to: "appointments#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
