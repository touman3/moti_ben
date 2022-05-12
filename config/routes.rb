Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'notepads/new'
  get 'top' => 'home#top'
  post 'notepads' => 'notepads#create'
  get 'notepads' => 'notepads#index'
  get 'notepads/:id' => 'notepads#show', as: 'notepad'
  get 'notepads/:id/edit' => 'notepads#edit', as: 'edit_notepad'
  patch 'notepads/:id' => 'notepads#update', as: 'update_notepad'
  resources :goals
  resources :goal_times
  resources :members
  resources :genres

  get '/about' => 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
