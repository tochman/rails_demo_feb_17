Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/create'

  root controller: :articles, action: :index

  resources :articles, only: [:show] do
    resources :comments, only: [:create]
  end
end
