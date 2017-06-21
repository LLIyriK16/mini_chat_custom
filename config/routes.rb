Rails.application.routes.draw do
  devise_for :users, skip: [:passwords]
  resources :comments, only: [:new, :create]
  root to: 'comments#new'
end
