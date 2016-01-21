Rails.application.routes.draw do
  devise_for :users
  root 'muscle_groups#index'

  resources :muscle_groups, only: [:index, :show]
end
