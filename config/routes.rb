Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  root to: "texts#index"

  resources :movies, only: [:index]
  resources :texts, only: [:index, :show] do
  resource  :readed_texts, only: [:create, :destroy]
  end

  resources :lines, only: [:index, :show]

end
