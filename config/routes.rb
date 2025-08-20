Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :projects, only: [:index, :new, :create] do
    resources :features, only: [:index, :new, :create]
  end
  resources :features, only: [:show, :update, :edit] do
    resources :messages, only: [:create]
  end
end
