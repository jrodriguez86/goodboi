Rails.application.routes.draw do
  resources :workouts
  resources :users, only: [:new, :create] do
    resources :workouts, only: [:create]
  end
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
end
