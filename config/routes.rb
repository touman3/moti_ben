Rails.application.routes.draw do
  devise_for :users
  root "homes#top"
  resources :notepads
  resources :goals
  resources :goal_times
  resources :words
  resources :users, only: [:show, :edit, :update]

  get '/about' => 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
