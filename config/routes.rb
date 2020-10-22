Rails.application.routes.draw do
  devise_for :users
  resources :rsses
  resources :contacts
  resources :testimonials
  resources :educations
  resources :projects
  resources :articles
  resources :skills
  resources :about


  get '/education', to: 'educations#index'
  get '/blogs', to: 'articles#index'
  get 'blog/:title', to: 'articles#show', as: 'blog'
  get '/contact', to: 'contacts#index'
  get '/cv', to: 'home#cv'
  get '/rss', to: 'articles#new'
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  namespace :admin do
    root 'home#index'
    resources :articles, except: [:show]
    resources :testimonials, except: [:show]
    resources :courses, except: [:show]
    resources :projects, except: [:show]
    resources :skills, except: [:show]

  end
end

