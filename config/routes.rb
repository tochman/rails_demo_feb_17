Rails.application.routes.draw do
  get 'comments/create'

  root controller: :articles, action: :index

  resources :articles, only: [:index, :show] do
    resources :comments, only: [:create]
  end
end
