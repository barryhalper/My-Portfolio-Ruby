Rails.application.routes.draw do
  resources :articles
  resources :skills
  resources :about
  get 'home/index'
  root :to => 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
