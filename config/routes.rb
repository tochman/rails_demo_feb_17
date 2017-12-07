Rails.application.routes.draw do


  resources :subscriptions, only: [:new]
  post '/charges', controller: :subscriptions, action: :create

  devise_for :users, controllers: { omniauth_callbacks: :omniauth_callbacks}

  root controller: :articles, action: :index

  resources :articles, only: [:index, :show] do
    resources :comments, only: [:create]
  end
end
