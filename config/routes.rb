Rails.application.routes.draw do
  get 'comments/create'

  root controller: :articles, action: :index

  resources :articles do
    resources :comments
  end
end
