Rails.application.routes.draw do
  get 'appointments/index'
  devise_for :users
  root to: "appointments#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
