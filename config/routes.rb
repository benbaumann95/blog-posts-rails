Rails.application.routes.draw do
  devise_for :users
  root to: 'blogs#index'

  resources :blogs do
    resources :reviews, only: [:show, :new, :create]
  end



end
