Rails.application.routes.draw do
  root 'muscle_groups#index'

  resources :muscle_groups, only: [:index, :show]
end
