Rails.application.routes.draw do
  get 'goal_times/new'
  get 'goal_times/index'
  get 'goal_times/edit'
  devise_for :users
  root to: "homes#top"
  resources :notepads
  resources :goals

  get '/about' => 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
