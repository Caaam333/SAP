Rails.application.routes.draw do
  # get 'lost_pets/Adoptions'
  # get 'lost_pets/Users'
  # get 'lost_pets/Breeds'
  # get 'lost_pets/Species'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'lost_pets#index'

  resources :lost_pets do

    resources :adoptions, only: [:new, :create]
  end

  resources :adoptions, only: [:index, :show, :update, :edit]
end
