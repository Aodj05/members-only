Rails.application.routes.draw do
  resources :users
  resources :userrails
  devise_for :users
  resources :posts #[:create, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "posts#index"
end
