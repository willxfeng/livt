Rails.application.routes.draw do
  root 'muscle_groups#index'

  devise_for :users, controllers: {
    registrations: "registrations",
    sessions: "sessions"
  }

  resources :muscle_groups, only: [:index, :show]
  resources :muscles, only: [:index, :show]
  resources :exercises, only: [:index, :show]
  resources :workouts, only: [:index, :create]
end
